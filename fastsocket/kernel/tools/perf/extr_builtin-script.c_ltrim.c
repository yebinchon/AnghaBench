
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 int strlen (char*) ;

__attribute__((used)) static char *ltrim(char *str)
{
 int len = strlen(str);

 while (len && isspace(*str)) {
  len--;
  str++;
 }

 return str;
}
