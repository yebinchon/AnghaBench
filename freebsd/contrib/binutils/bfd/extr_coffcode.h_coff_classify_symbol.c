
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_syment {int n_sclass; scalar_t__ n_scnum; scalar_t__ n_value; } ;
typedef enum coff_symbol_classification { ____Placeholder_coff_symbol_classification } coff_symbol_classification ;
typedef int bfd ;
typedef int asection ;


 int COFF_SYMBOL_COMMON ;
 int COFF_SYMBOL_GLOBAL ;
 int COFF_SYMBOL_LOCAL ;
 int COFF_SYMBOL_PE_SECTION ;
 int COFF_SYMBOL_UNDEFINED ;



 int C_SECTION ;
 int C_STAT ;




 int SYMNMLEN ;
 int _ (char*) ;
 int _bfd_coff_internal_syment_name (int *,struct internal_syment*,char*) ;
 int _bfd_error_handler (int ,int *,int ) ;
 int bfd_get_section_name (int *,int *) ;
 int * coff_section_from_bfd_index (int *,scalar_t__) ;
 scalar_t__ strcmp (int ,int ) ;
 int stub1 (int ,int *,int ) ;

__attribute__((used)) static enum coff_symbol_classification
coff_classify_symbol (bfd *abfd,
        struct internal_syment *syment)
{


  switch (syment->n_sclass)
    {
    case 134:
    case 128:
    case 131:




      if (syment->n_scnum == 0)
 {
   if (syment->n_value == 0)
     return COFF_SYMBOL_UNDEFINED;
   else
     return COFF_SYMBOL_COMMON;
 }
      return COFF_SYMBOL_GLOBAL;

    default:
      break;
    }
  if (syment->n_scnum == 0)
    {
      char buf[SYMNMLEN + 1];

      (*_bfd_error_handler)
 (_("warning: %B: local symbol `%s' has no section"),
  abfd, _bfd_coff_internal_syment_name (abfd, syment, buf));
    }

  return COFF_SYMBOL_LOCAL;
}
