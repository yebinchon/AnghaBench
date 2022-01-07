
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* demand_copy_string (int*) ;
 int demand_empty_rest_of_line () ;
 scalar_t__ flag_m68k_mri ;
 char* input_line_pointer ;
 scalar_t__* is_end_of_line ;
 int new_logical_line_flags (char*,int,int) ;
 int s_app_file_string (char*,int) ;

void
s_app_file (int appfile)
{
  register char *s;
  int length;


  if ((s = demand_copy_string (&length)) != 0)
    {
      int may_omit
 = (!new_logical_line_flags (s, -1, 1) && appfile);



      if (flag_m68k_mri
   && *input_line_pointer == '\''
   && is_end_of_line[(unsigned char) input_line_pointer[1]])
 ++input_line_pointer;

      demand_empty_rest_of_line ();
      if (!may_omit)
 s_app_file_string (s, appfile);
    }
}
