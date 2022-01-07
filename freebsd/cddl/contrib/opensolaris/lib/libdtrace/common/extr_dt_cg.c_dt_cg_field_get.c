
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dt_regset_t ;
struct TYPE_9__ {scalar_t__ dn_op; int dn_flags; TYPE_1__* dn_left; } ;
typedef TYPE_2__ dt_node_t ;
typedef int dt_irlist_t ;
typedef int dif_instr_t ;
struct TYPE_10__ {int ctm_offset; int ctm_type; } ;
typedef TYPE_3__ ctf_membinfo_t ;
typedef int ctf_file_t ;
struct TYPE_11__ {int cte_bits; } ;
typedef TYPE_4__ ctf_encoding_t ;
struct TYPE_8__ {int dn_reg; } ;


 int DIF_INSTR_FMT (int ,int,int,int) ;
 int DIF_OP_AND ;
 int DIF_OP_SLL ;
 int DIF_OP_SRA ;
 int DIF_OP_SRL ;
 int DT_LBL_NONE ;
 int DT_NF_SIGNED ;
 scalar_t__ DT_TOK_DOT ;
 scalar_t__ DT_TOK_PTR ;
 int D_UNKNOWN ;
 int NBBY ;
 int P2ROUNDUP (int,int) ;
 int assert (int) ;
 int clp2 (int) ;
 scalar_t__ ctf_type_encoding (int *,int ,TYPE_4__*) ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_setx (int *,int,unsigned long long) ;
 int dt_irlist_append (int *,int ) ;
 int dt_regset_alloc (int *) ;
 int dt_regset_free (int *,int) ;
 int xyerror (int ,char*,int,int ,int) ;

__attribute__((used)) static void
dt_cg_field_get(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp,
    ctf_file_t *fp, const ctf_membinfo_t *mp)
{
 ctf_encoding_t e;
 dif_instr_t instr;
 uint64_t shift;
 int r1, r2;

 if (ctf_type_encoding(fp, mp->ctm_type, &e) != 0 || e.cte_bits > 64) {
  xyerror(D_UNKNOWN, "cg: bad field: off %lu type <%ld> "
      "bits %u\n", mp->ctm_offset, mp->ctm_type, e.cte_bits);
 }

 assert(dnp->dn_op == DT_TOK_PTR || dnp->dn_op == DT_TOK_DOT);
 r1 = dnp->dn_left->dn_reg;
 r2 = dt_regset_alloc(drp);
 if (dnp->dn_flags & DT_NF_SIGNED) {

  shift = clp2(P2ROUNDUP(e.cte_bits, NBBY) / NBBY) * NBBY -
      mp->ctm_offset % NBBY;



  dt_cg_setx(dlp, r2, 64 - shift);
  instr = DIF_INSTR_FMT(DIF_OP_SLL, r1, r2, r1);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

  dt_cg_setx(dlp, r2, 64 - e.cte_bits);
  instr = DIF_INSTR_FMT(DIF_OP_SRA, r1, r2, r1);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
 } else {

  shift = clp2(P2ROUNDUP(e.cte_bits, NBBY) / NBBY) * NBBY -
      (mp->ctm_offset % NBBY + e.cte_bits);



  dt_cg_setx(dlp, r2, shift);
  instr = DIF_INSTR_FMT(DIF_OP_SRL, r1, r2, r1);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

  dt_cg_setx(dlp, r2, (1ULL << e.cte_bits) - 1);
  instr = DIF_INSTR_FMT(DIF_OP_AND, r1, r2, r1);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
 }

 dt_regset_free(drp, r2);
}
