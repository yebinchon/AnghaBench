
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_ptr ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;


 int TRUE ;
 int assert (int ) ;
 scalar_t__ bfd_section_size (int ,int ) ;
 int bfd_set_section_contents (int ,int ,int *,int ,int ) ;
 int data_section ;
 int stdoutput ;
 int text_section ;

void
obj_aout_frob_file_before_fix (void)
{



  bfd_byte b = 0;
  bfd_boolean x = TRUE;
  if (bfd_section_size (stdoutput, text_section) != 0)
    x = bfd_set_section_contents (stdoutput, text_section, &b, (file_ptr) 0,
      (bfd_size_type) 1);
  else if (bfd_section_size (stdoutput, data_section) != 0)
    x = bfd_set_section_contents (stdoutput, data_section, &b, (file_ptr) 0,
      (bfd_size_type) 1);

  assert (x);
}
