
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skip_arg (char const*) ;
 char* skip_sep (char const*) ;

__attribute__((used)) static int count_argc(const char *str)
{
 int count = 0;

 while (*str) {
  str = skip_sep(str);
  if (*str) {
   count++;
   str = skip_arg(str);
  }
 }

 return count;
}
