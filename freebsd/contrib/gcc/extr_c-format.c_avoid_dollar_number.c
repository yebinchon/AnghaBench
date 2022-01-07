
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISDIGIT (char const) ;
 int OPT_Wformat ;
 int warning (int ,char*) ;

__attribute__((used)) static bool
avoid_dollar_number (const char *format)
{
  if (!ISDIGIT (*format))
    return 0;
  while (ISDIGIT (*format))
    format++;
  if (*format == '$')
    {
      warning (OPT_Wformat, "$ operand number used after format without operand number");
      return 1;
    }
  return 0;
}
