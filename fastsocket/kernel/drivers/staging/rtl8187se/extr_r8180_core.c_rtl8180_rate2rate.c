
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int* rtl_rate ;

inline u16 rtl8180_rate2rate(short rate)
{
 if (rate > 12)
  return 10;
 return rtl_rate[rate];
}
