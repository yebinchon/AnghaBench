
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int symbolS ;
struct ecoff_debug_swap {int (* swap_ext_out ) (int ,int *,int ) ;int external_ext_size; } ;
struct TYPE_4__ {int native; int local; } ;
typedef TYPE_1__ ecoff_symbol_type ;
struct TYPE_5__ {struct ecoff_debug_swap debug_swap; } ;
typedef int EXTR ;


 int FALSE ;
 scalar_t__ bfd_asymbol_flavour (int ) ;
 scalar_t__ bfd_target_ecoff_flavour ;
 TYPE_3__* ecoff_backend (int ) ;
 TYPE_1__* ecoffsymbol (int ) ;
 int know (int) ;
 int stdoutput ;
 int stub1 (int ,int *,int ) ;
 int symbol_get_bfdsym (int *) ;
 int xmalloc (int ) ;

void
obj_ecoff_set_ext (symbolS *sym, EXTR *ext)
{
  const struct ecoff_debug_swap * const debug_swap
    = &ecoff_backend (stdoutput)->debug_swap;
  ecoff_symbol_type *esym;

  know (bfd_asymbol_flavour (symbol_get_bfdsym (sym))
 == bfd_target_ecoff_flavour);
  esym = ecoffsymbol (symbol_get_bfdsym (sym));
  esym->local = FALSE;
  esym->native = xmalloc (debug_swap->external_ext_size);
  (*debug_swap->swap_ext_out) (stdoutput, ext, esym->native);
}
