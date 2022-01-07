
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEPRECATED_STREQ (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
is_suffix (const char *str, const char *suffix)
{
  int len1, len2;
  if (str == ((void*)0))
    return 0;
  len1 = strlen (str);
  len2 = strlen (suffix);
  return (len1 >= len2 && DEPRECATED_STREQ (str + len1 - len2, suffix));
}
