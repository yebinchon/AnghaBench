
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_quad_t ;


 int HEX ;

int
uqd_asc(u_quad_t val, char *str, int len, int base)
{
 char *pt;
 u_quad_t digit;




 pt = str + len - 1;






 if (base == HEX) {
  while (pt >= str) {
   if ((digit = (val & 0xf)) < 10)
    *pt-- = '0' + (char)digit;
   else
    *pt-- = 'a' + (char)(digit - 10);
   if ((val = (val >> 4)) == (u_quad_t)0)
    break;
  }
 } else {
  while (pt >= str) {
   *pt-- = '0' + (char)(val & 0x7);
   if ((val = (val >> 3)) == (u_quad_t)0)
    break;
  }
 }




 while (pt >= str)
  *pt-- = '0';
 if (val != (u_quad_t)0)
  return(-1);
 return(0);
}
