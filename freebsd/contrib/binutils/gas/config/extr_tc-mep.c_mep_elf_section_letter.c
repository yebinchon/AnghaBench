
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHF_MEP_VLIW ;
 char* _ (char*) ;

int
mep_elf_section_letter (int letter, char **ptrmsg)
{
  if (letter == 'v')
    return SHF_MEP_VLIW;

  *ptrmsg = _("Bad .section directive: want a,v,w,x,M,S in string");
  return 0;
}
