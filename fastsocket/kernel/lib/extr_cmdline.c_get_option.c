
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int simple_strtol (char*,char**,int ) ;

int get_option (char **str, int *pint)
{
 char *cur = *str;

 if (!cur || !(*cur))
  return 0;
 *pint = simple_strtol (cur, str, 0);
 if (cur == *str)
  return 0;
 if (**str == ',') {
  (*str)++;
  return 2;
 }
 if (**str == '-')
  return 3;

 return 1;
}
