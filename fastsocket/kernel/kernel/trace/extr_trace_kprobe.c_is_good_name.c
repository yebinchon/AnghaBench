
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalpha (char const) ;
 int isdigit (char const) ;

__attribute__((used)) static int is_good_name(const char *name)
{
 if (!isalpha(*name) && *name != '_')
  return 0;
 while (*++name != '\0') {
  if (!isalpha(*name) && !isdigit(*name) && *name != '_')
   return 0;
 }
 return 1;
}
