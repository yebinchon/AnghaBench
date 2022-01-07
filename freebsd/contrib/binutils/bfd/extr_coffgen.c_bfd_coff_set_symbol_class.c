
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_13__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {unsigned int n_sclass; int n_flags; scalar_t__ n_value; void* n_scnum; int n_type; } ;
struct TYPE_18__ {TYPE_2__ syment; } ;
struct TYPE_19__ {TYPE_3__ u; } ;
typedef TYPE_4__ combined_entry_type ;
struct TYPE_20__ {TYPE_4__* native; int symbol; } ;
typedef TYPE_5__ coff_symbol_type ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_21__ {TYPE_10__* section; scalar_t__ value; } ;
typedef TYPE_6__ asymbol ;
struct TYPE_16__ {scalar_t__ vma; void* target_index; } ;
struct TYPE_15__ {int flags; } ;
struct TYPE_14__ {TYPE_1__* output_section; scalar_t__ output_offset; } ;


 int FALSE ;
 void* N_UNDEF ;
 int TRUE ;
 int T_NULL ;
 TYPE_13__* bfd_asymbol_bfd (int *) ;
 int bfd_error_invalid_operation ;
 scalar_t__ bfd_is_com_section (TYPE_10__*) ;
 scalar_t__ bfd_is_und_section (TYPE_10__*) ;
 int bfd_set_error (int ) ;
 TYPE_4__* bfd_zalloc (int *,int) ;
 TYPE_5__* coff_symbol_from (int *,TYPE_6__*) ;
 int obj_pe (int *) ;

bfd_boolean
bfd_coff_set_symbol_class (bfd * abfd,
      asymbol * symbol,
      unsigned int class)
{
  coff_symbol_type * csym;

  csym = coff_symbol_from (abfd, symbol);
  if (csym == ((void*)0))
    {
      bfd_set_error (bfd_error_invalid_operation);
      return FALSE;
    }
  else if (csym->native == ((void*)0))
    {





      combined_entry_type * native;
      bfd_size_type amt = sizeof (* native);

      native = bfd_zalloc (abfd, amt);
      if (native == ((void*)0))
 return FALSE;

      native->u.syment.n_type = T_NULL;
      native->u.syment.n_sclass = class;

      if (bfd_is_und_section (symbol->section))
 {
   native->u.syment.n_scnum = N_UNDEF;
   native->u.syment.n_value = symbol->value;
 }
      else if (bfd_is_com_section (symbol->section))
 {
   native->u.syment.n_scnum = N_UNDEF;
   native->u.syment.n_value = symbol->value;
 }
      else
 {
   native->u.syment.n_scnum =
     symbol->section->output_section->target_index;
   native->u.syment.n_value = (symbol->value
          + symbol->section->output_offset);
   if (! obj_pe (abfd))
     native->u.syment.n_value += symbol->section->output_section->vma;



   native->u.syment.n_flags = bfd_asymbol_bfd (& csym->symbol)->flags;
 }

      csym->native = native;
    }
  else
    csym->native->u.syment.n_sclass = class;

  return TRUE;
}
