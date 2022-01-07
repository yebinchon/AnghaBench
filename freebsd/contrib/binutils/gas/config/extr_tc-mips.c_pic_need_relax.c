
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int symbolS ;
typedef int bfd_boolean ;
typedef int asection ;
struct TYPE_2__ {int * X_add_symbol; } ;


 int IS_ELF ;
 int * S_GET_SEGMENT (int *) ;
 int S_IS_EXTERNAL (int *) ;
 int S_IS_WEAK (int *) ;
 int TRUE ;
 int bfd_abs_section ;
 int bfd_is_com_section (int *) ;
 int bfd_und_section ;
 int s_is_linkonce (int *,int *) ;
 scalar_t__ symbol_equated_reloc_p (int *) ;
 TYPE_1__* symbol_get_value_expression (int *) ;
 scalar_t__ symbol_section_p (int *) ;

__attribute__((used)) static bfd_boolean
pic_need_relax (symbolS *sym, asection *segtype)
{
  asection *symsec;


  while (symbol_equated_reloc_p (sym))
    {
      symbolS *n;


      n = symbol_get_value_expression (sym)->X_add_symbol;
      if (n == sym)
 break;
      sym = n;
    }

  if (symbol_section_p (sym))
    return TRUE;

  symsec = S_GET_SEGMENT (sym);


  return (symsec != &bfd_und_section
   && symsec != &bfd_abs_section
   && !bfd_is_com_section (symsec)
   && !s_is_linkonce (sym, segtype)




   );
}
