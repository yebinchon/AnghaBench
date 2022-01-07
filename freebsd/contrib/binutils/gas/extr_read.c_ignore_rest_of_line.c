
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* buffer_limit ;
 scalar_t__* input_line_pointer ;
 int * is_end_of_line ;
 int know (int ) ;

void
ignore_rest_of_line (void)
{
  while (input_line_pointer < buffer_limit
  && !is_end_of_line[(unsigned char) *input_line_pointer])
    input_line_pointer++;

  input_line_pointer++;


  know (is_end_of_line[(unsigned char) input_line_pointer[-1]]);
}
