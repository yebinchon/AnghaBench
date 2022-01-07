
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ulong_t ;
typedef int dt_regset_t ;
struct TYPE_9__ {int dn_flags; int dn_reg; int dn_type; int dn_ctfp; } ;
typedef TYPE_1__ dt_node_t ;
typedef int dt_irlist_t ;
typedef int dif_instr_t ;
struct TYPE_10__ {int cte_bits; } ;
typedef TYPE_2__ ctf_encoding_t ;


 scalar_t__ CTF_ERR ;
 int DIF_INSTR_COPYS (int,int,int) ;
 int DIF_INSTR_STORE (int ,int,int) ;
 int DIF_OP_STB ;
 int DIF_OP_STH ;
 int DIF_OP_STW ;
 int DIF_OP_STX ;
 int DT_LBL_NONE ;
 int DT_NF_BITFIELD ;
 int DT_NF_REF ;
 int D_UNKNOWN ;
 int NBBY ;
 int P2ROUNDUP (int ,int) ;
 size_t clp2 (int) ;
 scalar_t__ ctf_type_encoding (int ,int ,TYPE_2__*) ;
 int dt_cg_field_set (TYPE_1__*,int *,int *,TYPE_1__*) ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_setx (int *,int,size_t) ;
 int dt_irlist_append (int *,int ) ;
 size_t dt_node_type_size (TYPE_1__*) ;
 int dt_regset_alloc (int *) ;
 int dt_regset_free (int *,int) ;
 int xyerror (int ,char*,int ) ;

__attribute__((used)) static void
dt_cg_store(dt_node_t *src, dt_irlist_t *dlp, dt_regset_t *drp, dt_node_t *dst)
{
 ctf_encoding_t e;
 dif_instr_t instr;
 size_t size;
 int reg;






 if ((dst->dn_flags & DT_NF_BITFIELD) &&
     ctf_type_encoding(dst->dn_ctfp, dst->dn_type, &e) != CTF_ERR)
  size = clp2(P2ROUNDUP(e.cte_bits, NBBY) / NBBY);
 else
  size = dt_node_type_size(src);

 if (src->dn_flags & DT_NF_REF) {
  reg = dt_regset_alloc(drp);
  dt_cg_setx(dlp, reg, size);
  instr = DIF_INSTR_COPYS(src->dn_reg, reg, dst->dn_reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
  dt_regset_free(drp, reg);
 } else {
  if (dst->dn_flags & DT_NF_BITFIELD)
   reg = dt_cg_field_set(src, dlp, drp, dst);
  else
   reg = src->dn_reg;

  switch (size) {
  case 1:
   instr = DIF_INSTR_STORE(DIF_OP_STB, reg, dst->dn_reg);
   break;
  case 2:
   instr = DIF_INSTR_STORE(DIF_OP_STH, reg, dst->dn_reg);
   break;
  case 4:
   instr = DIF_INSTR_STORE(DIF_OP_STW, reg, dst->dn_reg);
   break;
  case 8:
   instr = DIF_INSTR_STORE(DIF_OP_STX, reg, dst->dn_reg);
   break;
  default:
   xyerror(D_UNKNOWN, "internal error -- cg cannot store "
       "size %lu when passed by value\n", (ulong_t)size);
  }
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

  if (dst->dn_flags & DT_NF_BITFIELD)
   dt_regset_free(drp, reg);
 }
}
