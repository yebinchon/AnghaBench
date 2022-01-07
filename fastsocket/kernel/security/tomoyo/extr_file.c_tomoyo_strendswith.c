
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static bool tomoyo_strendswith(const char *name, const char *tail)
{
 int len;

 if (!name || !tail)
  return 0;
 len = strlen(name) - strlen(tail);
 return len >= 0 && !strcmp(name + len, tail);
}
