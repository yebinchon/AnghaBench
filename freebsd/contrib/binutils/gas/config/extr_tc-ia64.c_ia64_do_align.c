
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* input_line_pointer ;
 int s_align_bytes (int) ;

__attribute__((used)) static void
ia64_do_align (int nbytes)
{
  char *saved_input_line_pointer = input_line_pointer;

  input_line_pointer = "";
  s_align_bytes (nbytes);
  input_line_pointer = saved_input_line_pointer;
}
