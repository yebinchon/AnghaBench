
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int crfd; int ifdMax; int issMax; int iauxMax; int ioptMax; int isymMax; int ipdMax; int idnMax; int cbLine; int ilineMax; int vstamp; } ;
struct ecoff_debug_info {int external_rfd; TYPE_1__ symbolic_header; int external_fdr; int ss; int external_aux; int external_opt; int external_sym; int external_pdr; int external_dnr; int line; } ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;
struct TYPE_12__ {int (* swap_ext_out ) (int *,TYPE_4__*,int ) ;int (* swap_ext_in ) (int *,int ,TYPE_4__*) ;} ;
struct TYPE_16__ {TYPE_3__ debug_swap; } ;
struct TYPE_15__ {int * cprmask; int fprmask; int gprmask; int gp; struct ecoff_debug_info debug_info; } ;
struct TYPE_14__ {int native; scalar_t__ local; } ;
struct TYPE_11__ {int index; } ;
struct TYPE_13__ {TYPE_2__ asym; int ifd; } ;
typedef TYPE_4__ EXTR ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ bfd_get_flavour (int *) ;
 int ** bfd_get_outsymbols (int *) ;
 size_t bfd_get_symcount (int *) ;
 scalar_t__ bfd_target_ecoff_flavour ;
 TYPE_9__* ecoff_backend (int *) ;
 TYPE_8__* ecoff_data (int *) ;
 TYPE_7__* ecoffsymbol (int *) ;
 int ifdNil ;
 int indexNil ;
 int stub1 (int *,int ,TYPE_4__*) ;
 int stub2 (int *,TYPE_4__*,int ) ;

bfd_boolean
_bfd_ecoff_bfd_copy_private_bfd_data (bfd *ibfd, bfd *obfd)
{
  struct ecoff_debug_info *iinfo = &ecoff_data (ibfd)->debug_info;
  struct ecoff_debug_info *oinfo = &ecoff_data (obfd)->debug_info;
  int i;
  asymbol **sym_ptr_ptr;
  size_t c;
  bfd_boolean local;



  if (bfd_get_flavour (ibfd) != bfd_target_ecoff_flavour
      || bfd_get_flavour (obfd) != bfd_target_ecoff_flavour)
    return TRUE;


  ecoff_data (obfd)->gp = ecoff_data (ibfd)->gp;
  ecoff_data (obfd)->gprmask = ecoff_data (ibfd)->gprmask;
  ecoff_data (obfd)->fprmask = ecoff_data (ibfd)->fprmask;
  for (i = 0; i < 3; i++)
    ecoff_data (obfd)->cprmask[i] = ecoff_data (ibfd)->cprmask[i];


  oinfo->symbolic_header.vstamp = iinfo->symbolic_header.vstamp;


  c = bfd_get_symcount (obfd);
  sym_ptr_ptr = bfd_get_outsymbols (obfd);
  if (c == 0 || sym_ptr_ptr == ((void*)0))
    return TRUE;


  local = FALSE;
  for (; c > 0; c--, sym_ptr_ptr++)
    {
      if (ecoffsymbol (*sym_ptr_ptr)->local)
 {
   local = TRUE;
   break;
 }
    }

  if (local)
    {
      oinfo->symbolic_header.ilineMax = iinfo->symbolic_header.ilineMax;
      oinfo->symbolic_header.cbLine = iinfo->symbolic_header.cbLine;
      oinfo->line = iinfo->line;

      oinfo->symbolic_header.idnMax = iinfo->symbolic_header.idnMax;
      oinfo->external_dnr = iinfo->external_dnr;

      oinfo->symbolic_header.ipdMax = iinfo->symbolic_header.ipdMax;
      oinfo->external_pdr = iinfo->external_pdr;

      oinfo->symbolic_header.isymMax = iinfo->symbolic_header.isymMax;
      oinfo->external_sym = iinfo->external_sym;

      oinfo->symbolic_header.ioptMax = iinfo->symbolic_header.ioptMax;
      oinfo->external_opt = iinfo->external_opt;

      oinfo->symbolic_header.iauxMax = iinfo->symbolic_header.iauxMax;
      oinfo->external_aux = iinfo->external_aux;

      oinfo->symbolic_header.issMax = iinfo->symbolic_header.issMax;
      oinfo->ss = iinfo->ss;

      oinfo->symbolic_header.ifdMax = iinfo->symbolic_header.ifdMax;
      oinfo->external_fdr = iinfo->external_fdr;

      oinfo->symbolic_header.crfd = iinfo->symbolic_header.crfd;
      oinfo->external_rfd = iinfo->external_rfd;
    }
  else
    {



      c = bfd_get_symcount (obfd);
      sym_ptr_ptr = bfd_get_outsymbols (obfd);
      for (; c > 0; c--, sym_ptr_ptr++)
 {
   EXTR esym;

   (*(ecoff_backend (obfd)->debug_swap.swap_ext_in))
     (obfd, ecoffsymbol (*sym_ptr_ptr)->native, &esym);
   esym.ifd = ifdNil;
   esym.asym.index = indexNil;
   (*(ecoff_backend (obfd)->debug_swap.swap_ext_out))
     (obfd, &esym, ecoffsymbol (*sym_ptr_ptr)->native);
 }
    }

  return TRUE;
}
