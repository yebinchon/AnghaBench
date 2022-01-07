
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flag_m68k_mri ;
 char* input_line_pointer ;
 int * is_end_of_line ;
 int know (int ) ;

char *
mri_comment_field (char *stopcp)
{
  char *s;
  for (s = input_line_pointer;
       !is_end_of_line[(unsigned char) *s];
       s++)
    ;

  *stopcp = *s;
  *s = '\0';

  return s;
}
