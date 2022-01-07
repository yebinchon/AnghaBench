
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


union aux_ext {int a_rndx; int a_ti; } ;
struct TYPE_16__ {int (* swap_rndx_in ) (int ,int *,TYPE_3__*) ;int (* swap_tir_in ) (int ,int *,TYPE_1__*) ;} ;
struct TYPE_15__ {int iauxBase; int fBigendian; } ;
struct TYPE_14__ {int rfd; } ;
struct TYPE_13__ {scalar_t__ index; } ;
struct TYPE_12__ {scalar_t__ bt; } ;
struct TYPE_11__ {union aux_ext* external_aux; } ;
typedef TYPE_1__ TIR ;
typedef TYPE_2__ SYMR ;
typedef TYPE_3__ RNDXR ;
typedef TYPE_4__ FDR ;


 unsigned int AUX_GET_ISYM (int ,union aux_ext*) ;
 scalar_t__ btEnum ;
 scalar_t__ btStruct ;
 scalar_t__ btUnion ;
 TYPE_10__* debug_info ;
 TYPE_9__* debug_swap ;
 scalar_t__ indexNil ;
 int stub1 (int ,int *,TYPE_1__*) ;
 int stub2 (int ,int *,TYPE_3__*) ;

__attribute__((used)) static int
has_opaque_xref (FDR *fh, SYMR *sh)
{
  TIR tir;
  union aux_ext *ax;
  RNDXR rn[1];
  unsigned int rf;

  if (sh->index == indexNil)
    return 0;

  ax = debug_info->external_aux + fh->iauxBase + sh->index;
  (*debug_swap->swap_tir_in) (fh->fBigendian, &ax->a_ti, &tir);
  if (tir.bt != btStruct && tir.bt != btUnion && tir.bt != btEnum)
    return 0;

  ax++;
  (*debug_swap->swap_rndx_in) (fh->fBigendian, &ax->a_rndx, rn);
  if (rn->rfd == 0xfff)
    rf = AUX_GET_ISYM (fh->fBigendian, ax + 1);
  else
    rf = rn->rfd;
  if (rf != -1)
    return 0;
  return 1;
}
