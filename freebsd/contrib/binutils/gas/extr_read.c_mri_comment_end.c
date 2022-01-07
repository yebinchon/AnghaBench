
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_mri ;
 char* input_line_pointer ;
 int * is_end_of_line ;
 int know (int ) ;

void
mri_comment_end (char *stop, int stopc)
{
  know (flag_mri);

  input_line_pointer = stop;
  *stop = stopc;
  while (!is_end_of_line[(unsigned char) *input_line_pointer])
    ++input_line_pointer;
}
