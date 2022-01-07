
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
typedef int bfd_boolean ;
typedef int asection ;
struct TYPE_2__ {int * X_add_symbol; } ;


 int FALSE ;
 scalar_t__ OUTPUT_FLAVOR ;
 int SEC_LINK_ONCE ;
 int * S_GET_SEGMENT (int *) ;
 int S_IS_EXTERNAL (int *) ;
 int S_IS_LOCAL (int *) ;
 int S_IS_WEAK (int *) ;
 int TRUE ;
 int bfd_abs_section ;
 int bfd_get_section_flags (int ,int *) ;
 int bfd_is_com_section (int *) ;
 scalar_t__ bfd_target_elf_flavour ;
 int bfd_und_section ;
 int segment_name (int *) ;
 int stdoutput ;
 scalar_t__ strncmp (int ,char*,int) ;
 scalar_t__ symbol_equated_reloc_p (int *) ;
 TYPE_1__* symbol_get_value_expression (int *) ;

__attribute__((used)) static bfd_boolean
pic_need_relax (symbolS *sym, asection *segtype)
{
  asection *symsec;
  bfd_boolean linkonce;


  while (symbol_equated_reloc_p (sym))
    {
      symbolS *n;



      n = symbol_get_value_expression (sym)->X_add_symbol;
      if (n == sym)
 break;
      sym = n;
    }

  symsec = S_GET_SEGMENT (sym);


  linkonce = FALSE;
  if (symsec != segtype && ! S_IS_LOCAL (sym))
    {
      if ((bfd_get_section_flags (stdoutput, symsec) & SEC_LINK_ONCE) != 0)
 linkonce = TRUE;




      if (strncmp (segment_name (symsec), ".gnu.linkonce",
     sizeof ".gnu.linkonce" - 1) == 0)
 linkonce = TRUE;
    }


  return (symsec != &bfd_und_section
     && symsec != &bfd_abs_section
   && ! bfd_is_com_section (symsec)
     && !linkonce





   );
}
