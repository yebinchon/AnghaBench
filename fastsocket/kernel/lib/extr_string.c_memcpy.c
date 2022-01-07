
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *memcpy(void *dest, const void *src, size_t count)
{
 char *tmp = dest;
 const char *s = src;

 while (count--)
  *tmp++ = *s++;
 return dest;
}
