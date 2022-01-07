
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dt_regset_t ;
struct TYPE_6__ {int dn_flags; int dn_reg; } ;
typedef TYPE_1__ dt_node_t ;
typedef int dt_irlist_t ;
typedef int dif_instr_t ;


 int DIF_INSTR_FMT (int ,int ,int,int ) ;
 int DIF_OP_SLL ;
 int DIF_OP_SRA ;
 int DIF_OP_SRL ;
 int DT_LBL_NONE ;
 int DT_NF_SIGNED ;
 int NBBY ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_setx (int *,int,int) ;
 int dt_irlist_append (int *,int ) ;
 int dt_node_is_scalar (TYPE_1__ const*) ;
 size_t dt_node_type_size (TYPE_1__ const*) ;
 int dt_regset_alloc (int *) ;
 int dt_regset_free (int *,int) ;

__attribute__((used)) static void
dt_cg_typecast(const dt_node_t *src, const dt_node_t *dst,
    dt_irlist_t *dlp, dt_regset_t *drp)
{
 size_t srcsize = dt_node_type_size(src);
 size_t dstsize = dt_node_type_size(dst);

 dif_instr_t instr;
 int rg;

 if (!dt_node_is_scalar(dst))
  return;
 if (dstsize == srcsize &&
     ((src->dn_flags ^ dst->dn_flags) & DT_NF_SIGNED) != 0)
  return;
 if (dstsize > srcsize && (src->dn_flags & DT_NF_SIGNED) == 0)
  return;

 rg = dt_regset_alloc(drp);

 if (dstsize > srcsize) {
  int n = sizeof (uint64_t) * NBBY - srcsize * NBBY;
  int s = (dstsize - srcsize) * NBBY;

  dt_cg_setx(dlp, rg, n);

  instr = DIF_INSTR_FMT(DIF_OP_SLL, src->dn_reg, rg, dst->dn_reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

  if ((dst->dn_flags & DT_NF_SIGNED) || n == s) {
   instr = DIF_INSTR_FMT(DIF_OP_SRA,
       dst->dn_reg, rg, dst->dn_reg);
   dt_irlist_append(dlp,
       dt_cg_node_alloc(DT_LBL_NONE, instr));
  } else {
   dt_cg_setx(dlp, rg, s);
   instr = DIF_INSTR_FMT(DIF_OP_SRA,
       dst->dn_reg, rg, dst->dn_reg);
   dt_irlist_append(dlp,
       dt_cg_node_alloc(DT_LBL_NONE, instr));
   dt_cg_setx(dlp, rg, n - s);
   instr = DIF_INSTR_FMT(DIF_OP_SRL,
       dst->dn_reg, rg, dst->dn_reg);
   dt_irlist_append(dlp,
       dt_cg_node_alloc(DT_LBL_NONE, instr));
  }
 } else if (dstsize != sizeof (uint64_t)) {
  int n = sizeof (uint64_t) * NBBY - dstsize * NBBY;

  dt_cg_setx(dlp, rg, n);

  instr = DIF_INSTR_FMT(DIF_OP_SLL, src->dn_reg, rg, dst->dn_reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

  instr = DIF_INSTR_FMT((dst->dn_flags & DT_NF_SIGNED) ?
      DIF_OP_SRA : DIF_OP_SRL, dst->dn_reg, rg, dst->dn_reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
 }

 dt_regset_free(drp, rg);
}
