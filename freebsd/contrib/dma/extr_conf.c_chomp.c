
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char*) ;

__attribute__((used)) static void
chomp(char *str)
{
 size_t len = strlen(str);

 if (len == 0)
  return;
 if (str[len - 1] == '\n')
  str[len - 1] = 0;
}
