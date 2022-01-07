
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKIP_WHITESPACE () ;
 scalar_t__* input_line_pointer ;
 int* is_end_of_line ;

int
is_it_end_of_statement (void)
{
  SKIP_WHITESPACE ();
  return (is_end_of_line[(unsigned char) *input_line_pointer]);
}
