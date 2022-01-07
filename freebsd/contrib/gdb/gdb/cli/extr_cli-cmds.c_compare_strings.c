
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int
compare_strings (const void *arg1, const void *arg2)
{
  const char **s1 = (const char **) arg1;
  const char **s2 = (const char **) arg2;
  return strcmp (*s1, *s2);
}
