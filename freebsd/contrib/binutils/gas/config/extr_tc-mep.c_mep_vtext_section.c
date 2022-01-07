
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ segT ;
typedef int flagword ;


 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_LOAD ;
 int SEC_MEP_VLIW ;
 int SEC_READONLY ;
 int SEC_RELOC ;
 int VTEXT_SECTION_NAME ;
 int bfd_applicable_section_flags (int ) ;
 int bfd_set_section_flags (int ,scalar_t__,int) ;
 int stdoutput ;
 scalar_t__ subseg_new (int ,int ) ;

__attribute__((used)) static segT
mep_vtext_section (void)
{
  static segT vtext_section;

  if (! vtext_section)
    {
      flagword applicable = bfd_applicable_section_flags (stdoutput);
      vtext_section = subseg_new (VTEXT_SECTION_NAME, 0);
      bfd_set_section_flags (stdoutput, vtext_section,
        applicable & (SEC_ALLOC | SEC_LOAD | SEC_RELOC
        | SEC_CODE | SEC_READONLY
        | SEC_MEP_VLIW));
    }

  return vtext_section;
}
