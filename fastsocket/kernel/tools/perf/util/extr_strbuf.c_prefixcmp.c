
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int prefixcmp(const char *str, const char *prefix)
{
 for (; ; str++, prefix++)
  if (!*prefix)
   return 0;
  else if (*str != *prefix)
   return (unsigned char)*prefix - (unsigned char)*str;
}
