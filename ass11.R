my_stock_data1<- read.csv("C:/Users/vikas/Downloads/Quote-Equity-TCS-EQ-04-09-2026-04-10-2026.csv")
#print(my_stock_data)
print(my_stock_data1)

my_stock_data2<-read.csv("C:/Users/vikas/Downloads/Quote-Equity-INFY-EQ-04-09-2026-04-10-2026.csv")
print(my_stock_data2)

#df<-rbind(my_stock_data1,my_stock_data2)
my_stock_data1$Company<-"TCS"
my_stock_data2$Company<-"Infosays"
df<-rbind(my_stock_data1,my_stock_data2)

df$DATE<-as.Date(df$DATE,format = "%d-%b-%Y")
df$CLOSE<-as.numeric(gsub(",","",df$CLOSE))
ggplot(data=df,aes(x=DATE,y=CLOSE,color=Company))+
  geom_line(linewidth =1)+
  geom_point(size = 2.5)+
  theme_minimal()