
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffer_limit ;
 int cond_exit_macro (int ) ;
 int input_line_pointer ;
 int input_scrub_next_buffer (int *) ;
 int macro_nest ;

void
end_repeat (int extra)
{
  cond_exit_macro (macro_nest);
  while (extra-- >= 0)
    buffer_limit = input_scrub_next_buffer (&input_line_pointer);
}
