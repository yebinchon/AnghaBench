
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int segT ;


 int SEC_CODE ;
 int bfd_get_section_flags (int ,int ) ;
 int stdoutput ;

int
subseg_text_p (segT sec)
{
  return (bfd_get_section_flags (stdoutput, sec) & SEC_CODE) != 0;
}
