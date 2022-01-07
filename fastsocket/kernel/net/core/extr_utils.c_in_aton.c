
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int htonl (unsigned long) ;

__be32 in_aton(const char *str)
{
 unsigned long l;
 unsigned int val;
 int i;

 l = 0;
 for (i = 0; i < 4; i++)
 {
  l <<= 8;
  if (*str != '\0')
  {
   val = 0;
   while (*str != '\0' && *str != '.' && *str != '\n')
   {
    val *= 10;
    val += *str - '0';
    str++;
   }
   l |= val;
   if (*str != '\0')
    str++;
  }
 }
 return(htonl(l));
}
