
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xprintf_struct ;


 int print_it (int *,size_t,char const*,char const*) ;

__attribute__((used)) static int type_s(xprintf_struct *s, int width, int prec,
                  const char *format_string, const char *arg_string)
{
  size_t string_len;

  if (arg_string == ((void*)0))
    return print_it(s, (size_t)6, "(null)", 0);



  string_len = 0;
  while (arg_string[string_len] != 0 && (size_t)prec != string_len)
    string_len++;

  if (width != -1 && string_len < (size_t)width)
    string_len = (size_t)width;

  return print_it(s, string_len, format_string, arg_string);
}
