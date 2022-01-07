
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEC_HAS_CONTENTS ;
 int SEC_READONLY ;
 scalar_t__ arcext_section ;
 int bfd_set_section_flags (int ,scalar_t__,int) ;
 int stdoutput ;
 scalar_t__ subseg_new (char*,int ) ;
 int subseg_set (scalar_t__,int ) ;

__attribute__((used)) static int
arc_set_ext_seg (void)
{
  if (!arcext_section)
    {
      arcext_section = subseg_new (".arcextmap", 0);
      bfd_set_section_flags (stdoutput, arcext_section,
        SEC_READONLY | SEC_HAS_CONTENTS);
    }
  else
    subseg_set (arcext_section, 0);
  return 1;
}
