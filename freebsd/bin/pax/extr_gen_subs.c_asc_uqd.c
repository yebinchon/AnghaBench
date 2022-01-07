
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_quad_t ;


 int HEX ;

u_quad_t
asc_uqd(char *str, int len, int base)
{
 char *stop;
 u_quad_t tval = 0;

 stop = str + len;




 while ((str < stop) && ((*str == ' ') || (*str == '0')))
  ++str;





 if (base == HEX) {
  while (str < stop) {
   if ((*str >= '0') && (*str <= '9'))
    tval = (tval << 4) + (*str++ - '0');
   else if ((*str >= 'A') && (*str <= 'F'))
    tval = (tval << 4) + 10 + (*str++ - 'A');
   else if ((*str >= 'a') && (*str <= 'f'))
    tval = (tval << 4) + 10 + (*str++ - 'a');
   else
    break;
  }
 } else {
   while ((str < stop) && (*str >= '0') && (*str <= '7'))
   tval = (tval << 3) + (*str++ - '0');
 }
 return(tval);
}
