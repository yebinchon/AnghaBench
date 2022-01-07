
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_12__ ;


struct TYPE_21__ {int ifdMax; } ;
struct ecoff_debug_info {int* ifdmap; TYPE_3__ symbolic_header; } ;
struct TYPE_22__ {int * native; scalar_t__ local; } ;
typedef TYPE_4__ ecoff_symbol_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_23__ {int flags; } ;
typedef TYPE_5__ asymbol ;
struct TYPE_20__ {scalar_t__ sc; int index; scalar_t__ reserved; int st; } ;
struct TYPE_24__ {int weakext; int ifd; TYPE_2__ asym; scalar_t__ reserved; scalar_t__ cobol_main; scalar_t__ jmptbl; } ;
struct TYPE_19__ {int (* swap_ext_in ) (int *,int *,TYPE_6__*) ;} ;
struct TYPE_18__ {TYPE_1__ debug_swap; } ;
struct TYPE_17__ {struct ecoff_debug_info debug_info; } ;
typedef TYPE_6__ EXTR ;


 int BFD_ASSERT (int) ;
 int BSF_DEBUGGING ;
 int BSF_LOCAL ;
 int BSF_SECTION_SYM ;
 int BSF_WEAK ;
 int FALSE ;
 int TRUE ;
 int * bfd_asymbol_bfd (TYPE_5__*) ;
 scalar_t__ bfd_asymbol_flavour (TYPE_5__*) ;
 int bfd_get_section (TYPE_5__*) ;
 int bfd_is_und_section (int ) ;
 scalar_t__ bfd_target_ecoff_flavour ;
 TYPE_13__* ecoff_backend (int *) ;
 TYPE_12__* ecoff_data (int *) ;
 TYPE_4__* ecoffsymbol (TYPE_5__*) ;
 int ifdNil ;
 int indexNil ;
 void* scAbs ;
 scalar_t__ scSUndefined ;
 scalar_t__ scUndefined ;
 int stGlobal ;
 int stub1 (int *,int *,TYPE_6__*) ;

__attribute__((used)) static bfd_boolean
ecoff_get_extr (asymbol *sym, EXTR *esym)
{
  ecoff_symbol_type *ecoff_sym_ptr;
  bfd *input_bfd;

  if (bfd_asymbol_flavour (sym) != bfd_target_ecoff_flavour
      || ecoffsymbol (sym)->native == ((void*)0))
    {

      if ((sym->flags & BSF_DEBUGGING) != 0
   || (sym->flags & BSF_LOCAL) != 0
   || (sym->flags & BSF_SECTION_SYM) != 0)
 return FALSE;

      esym->jmptbl = 0;
      esym->cobol_main = 0;
      esym->weakext = (sym->flags & BSF_WEAK) != 0;
      esym->reserved = 0;
      esym->ifd = ifdNil;

      esym->asym.st = stGlobal;
      esym->asym.sc = scAbs;
      esym->asym.reserved = 0;
      esym->asym.index = indexNil;
      return TRUE;
    }

  ecoff_sym_ptr = ecoffsymbol (sym);

  if (ecoff_sym_ptr->local)
    return FALSE;

  input_bfd = bfd_asymbol_bfd (sym);
  (*(ecoff_backend (input_bfd)->debug_swap.swap_ext_in))
    (input_bfd, ecoff_sym_ptr->native, esym);




  if ((esym->asym.sc == scUndefined
       || esym->asym.sc == scSUndefined)
      && ! bfd_is_und_section (bfd_get_section (sym)))
    esym->asym.sc = scAbs;



  if (esym->ifd != -1)
    {
      struct ecoff_debug_info *input_debug;

      input_debug = &ecoff_data (input_bfd)->debug_info;
      BFD_ASSERT (esym->ifd < input_debug->symbolic_header.ifdMax);
      if (input_debug->ifdmap != ((void*)0))
 esym->ifd = input_debug->ifdmap[esym->ifd];
    }

  return TRUE;
}
