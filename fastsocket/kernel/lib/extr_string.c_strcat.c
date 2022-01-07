
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strcat(char *dest, const char *src)
{
 char *tmp = dest;

 while (*dest)
  dest++;
 while ((*dest++ = *src++) != '\0')
  ;
 return tmp;
}
