
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 rtl819x_query_rxpwrpercentage(
 char antpower
 )
{
 if ((antpower <= -100) || (antpower >= 20))
 {
  return 0;
 }
 else if (antpower >= 0)
 {
  return 100;
 }
 else
 {
  return (100+antpower);
 }

}
