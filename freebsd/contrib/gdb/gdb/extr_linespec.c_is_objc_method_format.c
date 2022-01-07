
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,char const) ;

__attribute__((used)) static int
is_objc_method_format (const char *s)
{
  if (s == ((void*)0) || *s == '\0')
    return 0;

  if ((s[0] == ':') && (strchr ("+-", s[1]) != ((void*)0))
      && (s[2] == '[') && strchr(s, ']'))
    return 1;

  else if ((strchr ("+-", s[0]) != ((void*)0)) && (s[1] == '[') && strchr(s, ']'))
    return 1;
  return 0;
}
