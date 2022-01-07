
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
is_dwo_section(const char *name)
{
 size_t len;

 if ((len = strlen(name)) > 4 && strcmp(name + len - 4, ".dwo") == 0)
  return (1);
 return (0);
}
