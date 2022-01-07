
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_quad_t ;



__attribute__((used)) static int
uqd_oct(u_quad_t val, char *str, int len, int term)
{
 char *pt;




 pt = str + len - 1;
 switch(term) {
 case 3:
  *pt-- = '\0';
  break;
 case 2:
  *pt-- = ' ';
  *pt-- = '\0';
  break;
 case 1:
  *pt-- = ' ';
  break;
 case 0:
 default:
  *pt-- = '\0';
  *pt-- = ' ';
  break;
 }




 while (pt >= str) {
  *pt-- = '0' + (char)(val & 0x7);
  if ((val = val >> 3) == 0)
   break;
 }

 while (pt >= str)
  *pt-- = '0';
 if (val != (u_quad_t)0)
  return(-1);
 return(0);
}
