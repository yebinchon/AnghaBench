
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
l_strncpy(char *dest, const char *src, int len)
{
 char *stop;
 char *start;

 stop = dest + len;
 start = dest;
 while ((dest < stop) && (*src != '\0'))
  *dest++ = *src++;
 len = dest - start;
 while (dest < stop)
  *dest++ = '\0';
 return(len);
}
