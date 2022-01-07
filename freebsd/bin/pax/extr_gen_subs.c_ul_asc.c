
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int HEX ;

int
ul_asc(u_long val, char *str, int len, int base)
{
 char *pt;
 u_long digit;




 pt = str + len - 1;






 if (base == HEX) {
  while (pt >= str) {
   if ((digit = (val & 0xf)) < 10)
    *pt-- = '0' + (char)digit;
   else
    *pt-- = 'a' + (char)(digit - 10);
   if ((val = (val >> 4)) == (u_long)0)
    break;
  }
 } else {
  while (pt >= str) {
   *pt-- = '0' + (char)(val & 0x7);
   if ((val = (val >> 3)) == (u_long)0)
    break;
  }
 }




 while (pt >= str)
  *pt-- = '0';
 if (val != (u_long)0)
  return(-1);
 return(0);
}
