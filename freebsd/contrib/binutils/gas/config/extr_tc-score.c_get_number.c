
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISDIGIT (char) ;
 scalar_t__ ISXDIGIT (char) ;
 char* _ (char*) ;
 int as_bad (char*) ;
 int as_warn (char*) ;
 long hex_value (int ) ;
 char* input_line_pointer ;
 int printf (char*,char,char) ;

__attribute__((used)) static long
get_number (void)
{
  int negative = 0;
  long val = 0;

  if (*input_line_pointer == '-')
    {
      ++input_line_pointer;
      negative = 1;
    }
  if (!ISDIGIT (*input_line_pointer))
    as_bad (_("expected simple number"));
  if (input_line_pointer[0] == '0')
    {
      if (input_line_pointer[1] == 'x')
        {
          input_line_pointer += 2;
          while (ISXDIGIT (*input_line_pointer))
            {
              val <<= 4;
              val |= hex_value (*input_line_pointer++);
            }
          return negative ? -val : val;
        }
      else
        {
          ++input_line_pointer;
          while (ISDIGIT (*input_line_pointer))
            {
              val <<= 3;
              val |= *input_line_pointer++ - '0';
            }
          return negative ? -val : val;
        }
    }
  if (!ISDIGIT (*input_line_pointer))
    {
      printf (_(" *input_line_pointer == '%c' 0x%02x\n"), *input_line_pointer, *input_line_pointer);
      as_warn (_("invalid number"));
      return -1;
    }
  while (ISDIGIT (*input_line_pointer))
    {
      val *= 10;
      val += *input_line_pointer++ - '0';
    }
  return negative ? -val : val;
}
