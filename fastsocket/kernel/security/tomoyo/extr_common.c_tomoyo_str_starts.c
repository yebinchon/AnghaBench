
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int const) ;

__attribute__((used)) static bool tomoyo_str_starts(char **src, const char *find)
{
 const int len = strlen(find);
 char *tmp = *src;

 if (strncmp(tmp, find, len))
  return 0;
 tmp += len;
 *src = tmp;
 return 1;
}
