
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const dash2underscore (char const) ;

__attribute__((used)) static inline int parameq(const char *input, const char *paramname)
{
 unsigned int i;
 for (i = 0; dash2underscore(input[i]) == paramname[i]; i++)
  if (input[i] == '\0')
   return 1;
 return 0;
}
