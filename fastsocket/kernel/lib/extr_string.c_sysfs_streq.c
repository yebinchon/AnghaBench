
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
bool sysfs_streq(const char *s1, const char *s2)
{
 while (*s1 && *s1 == *s2) {
  s1++;
  s2++;
 }

 if (*s1 == *s2)
  return 1;
 if (!*s1 && *s2 == '\n' && !s2[1])
  return 1;
 if (*s1 == '\n' && !s1[1] && !*s2)
  return 1;
 return 0;
}
