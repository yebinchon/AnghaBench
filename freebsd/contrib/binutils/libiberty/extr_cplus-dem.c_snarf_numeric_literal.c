
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int string ;


 scalar_t__ ISDIGIT (unsigned char) ;
 char* char_str ;
 int string_append (int *,char*) ;

__attribute__((used)) static int
snarf_numeric_literal (const char **args, string *arg)
{
  if (**args == '-')
    {
      char_str[0] = '-';
      string_append (arg, char_str);
      (*args)++;
    }
  else if (**args == '+')
    (*args)++;

  if (!ISDIGIT ((unsigned char)**args))
    return 0;

  while (ISDIGIT ((unsigned char)**args))
    {
      char_str[0] = **args;
      string_append (arg, char_str);
      (*args)++;
    }

  return 1;
}
