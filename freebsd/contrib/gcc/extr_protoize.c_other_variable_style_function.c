
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_id_char (char const) ;
 int strlen (char*) ;
 scalar_t__ strstr (char const*,char*) ;
 char* varargs_style_indicator ;

__attribute__((used)) static int
other_variable_style_function (const char *ansi_header)
{
  const char *p;
  int len = strlen (varargs_style_indicator);

  for (p = ansi_header; p; )
    {
      const char *candidate;

      if ((candidate = strstr (p, varargs_style_indicator)) == 0)
 return 0;
      else
 if (!is_id_char (candidate[-1]) && !is_id_char (candidate[len]))
   return 1;
 else
   p = candidate + 1;
    }
  return 0;

}
