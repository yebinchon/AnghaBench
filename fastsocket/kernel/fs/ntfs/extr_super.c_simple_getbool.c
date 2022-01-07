
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char*) ;

__attribute__((used)) static int simple_getbool(char *s, bool *setval)
{
 if (s) {
  if (!strcmp(s, "1") || !strcmp(s, "yes") || !strcmp(s, "true"))
   *setval = 1;
  else if (!strcmp(s, "0") || !strcmp(s, "no") ||
       !strcmp(s, "false"))
   *setval = 0;
  else
   return 0;
 } else
  *setval = 1;
 return 1;
}
