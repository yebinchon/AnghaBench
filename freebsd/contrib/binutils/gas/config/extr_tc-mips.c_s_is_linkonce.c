
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int symbolS ;
typedef scalar_t__ segT ;
typedef int bfd_boolean ;


 int FALSE ;
 int SEC_LINK_ONCE ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 int S_IS_LOCAL (int *) ;
 int TRUE ;
 int bfd_get_section_flags (int ,scalar_t__) ;
 int segment_name (scalar_t__) ;
 int stdoutput ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static bfd_boolean
s_is_linkonce (symbolS *sym, segT from_seg)
{
  bfd_boolean linkonce = FALSE;
  segT symseg = S_GET_SEGMENT (sym);

  if (symseg != from_seg && !S_IS_LOCAL (sym))
    {
      if ((bfd_get_section_flags (stdoutput, symseg) & SEC_LINK_ONCE))
 linkonce = TRUE;
    }
  return linkonce;
}
