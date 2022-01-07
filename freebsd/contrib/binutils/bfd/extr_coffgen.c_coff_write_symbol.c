
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_14__ {unsigned int n_numaux; int n_type; int n_sclass; int n_scnum; } ;
struct TYPE_16__ {TYPE_12__ syment; int auxent; } ;
struct TYPE_17__ {TYPE_2__ u; } ;
typedef TYPE_3__ combined_entry_type ;
typedef unsigned int bfd_vma ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_18__ {int flags; TYPE_10__* section; } ;
typedef TYPE_4__ asymbol ;
typedef int asection ;
struct TYPE_15__ {int target_index; } ;
struct TYPE_13__ {TYPE_1__* output_section; } ;


 int BSF_DEBUGGING ;
 int C_FILE ;
 int FALSE ;
 int N_ABS ;
 int N_DEBUG ;
 int N_UNDEF ;
 int TRUE ;
 void* bfd_alloc (int *,scalar_t__) ;
 scalar_t__ bfd_bwrite (void*,scalar_t__,int *) ;
 scalar_t__ bfd_coff_auxesz (int *) ;
 int bfd_coff_swap_aux_out (int *,int *,int,int,int,unsigned int,void*) ;
 int bfd_coff_swap_sym_out (int *,TYPE_12__*,void*) ;
 scalar_t__ bfd_coff_symesz (int *) ;
 scalar_t__ bfd_is_abs_section (TYPE_10__*) ;
 scalar_t__ bfd_is_und_section (TYPE_10__*) ;
 int bfd_release (int *,void*) ;
 int coff_fix_symbol_name (int *,TYPE_4__*,TYPE_3__*,scalar_t__*,int **,scalar_t__*) ;
 int set_index (TYPE_4__*,unsigned int) ;

__attribute__((used)) static bfd_boolean
coff_write_symbol (bfd *abfd,
     asymbol *symbol,
     combined_entry_type *native,
     bfd_vma *written,
     bfd_size_type *string_size_p,
     asection **debug_string_section_p,
     bfd_size_type *debug_string_size_p)
{
  unsigned int numaux = native->u.syment.n_numaux;
  int type = native->u.syment.n_type;
  int class = native->u.syment.n_sclass;
  void * buf;
  bfd_size_type symesz;

  if (native->u.syment.n_sclass == C_FILE)
    symbol->flags |= BSF_DEBUGGING;

  if (symbol->flags & BSF_DEBUGGING
      && bfd_is_abs_section (symbol->section))
    native->u.syment.n_scnum = N_DEBUG;

  else if (bfd_is_abs_section (symbol->section))
    native->u.syment.n_scnum = N_ABS;

  else if (bfd_is_und_section (symbol->section))
    native->u.syment.n_scnum = N_UNDEF;

  else
    native->u.syment.n_scnum =
      symbol->section->output_section->target_index;

  coff_fix_symbol_name (abfd, symbol, native, string_size_p,
   debug_string_section_p, debug_string_size_p);

  symesz = bfd_coff_symesz (abfd);
  buf = bfd_alloc (abfd, symesz);
  if (!buf)
    return FALSE;
  bfd_coff_swap_sym_out (abfd, &native->u.syment, buf);
  if (bfd_bwrite (buf, symesz, abfd) != symesz)
    return FALSE;
  bfd_release (abfd, buf);

  if (native->u.syment.n_numaux > 0)
    {
      bfd_size_type auxesz;
      unsigned int j;

      auxesz = bfd_coff_auxesz (abfd);
      buf = bfd_alloc (abfd, auxesz);
      if (!buf)
 return FALSE;
      for (j = 0; j < native->u.syment.n_numaux; j++)
 {
   bfd_coff_swap_aux_out (abfd,
     &((native + j + 1)->u.auxent),
     type, class, (int) j,
     native->u.syment.n_numaux,
     buf);
   if (bfd_bwrite (buf, auxesz, abfd) != auxesz)
     return FALSE;
 }
      bfd_release (abfd, buf);
    }


  set_index (symbol, *written);

  *written += numaux + 1;
  return TRUE;
}
