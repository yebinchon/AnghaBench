
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
eqstring(const char *s1, const char *s2)
{
 while (*s1 && *s2) {
  int x1, x2;

  x1 = *(const unsigned char *)s1;
  x2 = *(const unsigned char *)s2;
  if (x1 >= 'A' && x1 <= 'Z') {
   x1 += 'a' - 'A';
  }
  if (x2 >= 'A' && x2 <= 'Z') {
   x2 += 'a' - 'A';
  }
  if (x1 != x2) {
   return 0;
  }
  s1 ++;
  s2 ++;
 }
 return !(*s1 || *s2);
}
