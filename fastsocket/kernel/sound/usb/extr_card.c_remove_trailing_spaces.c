
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 int strlen (char*) ;

__attribute__((used)) static void remove_trailing_spaces(char *str)
{
 char *p;

 if (!*str)
  return;
 for (p = str + strlen(str) - 1; p >= str && isspace(*p); p--)
  *p = 0;
}
