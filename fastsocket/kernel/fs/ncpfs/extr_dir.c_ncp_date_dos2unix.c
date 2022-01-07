
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le16 ;


 unsigned short* day_n ;
 unsigned short le16_to_cpu (int ) ;
 int local2utc (int) ;

int
ncp_date_dos2unix(__le16 t, __le16 d)
{
 unsigned short time = le16_to_cpu(t), date = le16_to_cpu(d);
 int month, year, secs;



 month = ((date >> 5) - 1) & 15;
 year = date >> 9;
 secs = (time & 31) * 2 + 60 * ((time >> 5) & 63) + (time >> 11) * 3600 +
  86400 * ((date & 31) - 1 + day_n[month] + (year / 4) +
  year * 365 - ((year & 3) == 0 && month < 2 ? 1 : 0) + 3653);

 return local2utc(secs);
}
