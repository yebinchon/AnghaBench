
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int check_modifier(char *str)
{
 char *p = str;


 if (strlen(str) > (sizeof("ukhGHppp") - 1))
  return -1;

 while (*p) {
  if (*p != 'p' && strchr(p + 1, *p))
   return -1;
  p++;
 }

 return 0;
}
