
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d_info {int dummy; } ;


 int d_check_char (struct d_info*,char) ;
 int d_next_char (struct d_info*) ;
 int d_number (struct d_info*) ;

__attribute__((used)) static int
d_call_offset (struct d_info *di, int c)
{
  if (c == '\0')
    c = d_next_char (di);

  if (c == 'h')
    d_number (di);
  else if (c == 'v')
    {
      d_number (di);
      if (! d_check_char (di, '_'))
 return 0;
      d_number (di);
    }
  else
    return 0;

  if (! d_check_char (di, '_'))
    return 0;

  return 1;
}
