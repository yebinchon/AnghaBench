
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* input_line_pointer ;
 scalar_t__ is_name_beginner (char) ;
 scalar_t__ is_name_ender (char) ;
 scalar_t__ is_part_of_name (char) ;

char
get_symbol_end (void)
{
  char c;



  if (is_name_beginner (c = *input_line_pointer++) || c == '\001')
    {
      while (is_part_of_name (c = *input_line_pointer++)
      || c == '\001')
 ;
      if (is_name_ender (c))
 c = *input_line_pointer++;
    }
  *--input_line_pointer = 0;
  return (c);
}
