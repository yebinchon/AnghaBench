
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int strncmp(const char *cs, const char *ct, size_t count)
{
 unsigned char c1, c2;

 while (count) {
  c1 = *cs++;
  c2 = *ct++;
  if (c1 != c2)
   return c1 < c2 ? -1 : 1;
  if (!c1)
   break;
  count--;
 }
 return 0;
}
