
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;
typedef struct TYPE_15__ TYPE_12__ ;


struct TYPE_18__ {scalar_t__ n_numaux; int n_sclass; scalar_t__ n_type; scalar_t__ n_flags; scalar_t__ n_value; void* n_scnum; } ;
struct TYPE_19__ {TYPE_2__ syment; } ;
struct TYPE_20__ {TYPE_3__ u; } ;
typedef TYPE_4__ combined_entry_type ;
struct TYPE_21__ {int symbol; } ;
typedef TYPE_5__ coff_symbol_type ;
typedef int bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_22__ {int flags; char* name; TYPE_12__* section; scalar_t__ value; } ;
typedef TYPE_6__ asymbol ;
typedef int asection ;
struct TYPE_17__ {scalar_t__ vma; void* target_index; } ;
struct TYPE_16__ {scalar_t__ flags; } ;
struct TYPE_15__ {TYPE_1__* output_section; scalar_t__ output_offset; } ;


 int BSF_DEBUGGING ;
 int BSF_LOCAL ;
 int BSF_WEAK ;
 int C_EXT ;
 int C_NT_WEAK ;
 int C_STAT ;
 int C_WEAKEXT ;
 void* N_UNDEF ;
 int TRUE ;
 scalar_t__ T_NULL ;
 TYPE_14__* bfd_asymbol_bfd (int *) ;
 scalar_t__ bfd_is_com_section (TYPE_12__*) ;
 scalar_t__ bfd_is_und_section (TYPE_12__*) ;
 TYPE_5__* coff_symbol_from (int *,TYPE_6__*) ;
 int coff_write_symbol (int *,TYPE_6__*,TYPE_4__*,int *,int *,int **,int *) ;
 scalar_t__ obj_pe (int *) ;

__attribute__((used)) static bfd_boolean
coff_write_alien_symbol (bfd *abfd,
    asymbol *symbol,
    bfd_vma *written,
    bfd_size_type *string_size_p,
    asection **debug_string_section_p,
    bfd_size_type *debug_string_size_p)
{
  combined_entry_type *native;
  combined_entry_type dummy;

  native = &dummy;
  native->u.syment.n_type = T_NULL;
  native->u.syment.n_flags = 0;
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
  else if (symbol->flags & BSF_DEBUGGING)
    {




      symbol->name = "";
      return TRUE;
    }
  else
    {
      native->u.syment.n_scnum =
 symbol->section->output_section->target_index;
      native->u.syment.n_value = (symbol->value
      + symbol->section->output_offset);
      if (! obj_pe (abfd))
 native->u.syment.n_value += symbol->section->output_section->vma;



      {
 coff_symbol_type *c = coff_symbol_from (abfd, symbol);
 if (c != (coff_symbol_type *) ((void*)0))
   native->u.syment.n_flags = bfd_asymbol_bfd (&c->symbol)->flags;
      }
    }

  native->u.syment.n_type = 0;
  if (symbol->flags & BSF_LOCAL)
    native->u.syment.n_sclass = C_STAT;
  else if (symbol->flags & BSF_WEAK)
    native->u.syment.n_sclass = obj_pe (abfd) ? C_NT_WEAK : C_WEAKEXT;
  else
    native->u.syment.n_sclass = C_EXT;
  native->u.syment.n_numaux = 0;

  return coff_write_symbol (abfd, symbol, native, written, string_size_p,
       debug_string_section_p, debug_string_size_p);
}
