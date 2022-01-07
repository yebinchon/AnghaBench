
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *strnchr(const char *s, size_t count, int c)
{
 for (; count-- && *s != '\0'; ++s)
  if (*s == (char)c)
   return (char *)s;
 return ((void*)0);
}
