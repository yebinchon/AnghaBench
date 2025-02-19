
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint_t ;
typedef int dt_regset_t ;
struct TYPE_4__ {TYPE_2__* dn_left; int dn_reg; TYPE_2__* dn_right; } ;
typedef TYPE_1__ dt_node_t ;
typedef int dt_irlist_t ;
typedef int dif_instr_t ;
struct TYPE_5__ {int dn_reg; } ;


 int DIF_INSTR_BRANCH (int ,int ) ;
 int DIF_INSTR_FMT (int ,int ,int ,int ) ;
 int DIF_INSTR_NOP ;
 int DIF_INSTR_TST (int ) ;
 int DIF_OP_BE ;
 int DIF_OP_XOR ;
 int DT_LBL_NONE ;
 int dt_cg_node (TYPE_2__*,int *,int *) ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_setx (int *,int ,int) ;
 int dt_irlist_append (int *,int ) ;
 int dt_irlist_label (int *) ;
 int dt_regset_free (int *,int ) ;

__attribute__((used)) static void
dt_cg_logical_xor(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp)
{
 uint_t lbl_next = dt_irlist_label(dlp);
 uint_t lbl_tail = dt_irlist_label(dlp);

 dif_instr_t instr;

 dt_cg_node(dnp->dn_left, dlp, drp);
 instr = DIF_INSTR_TST(dnp->dn_left->dn_reg);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

 instr = DIF_INSTR_BRANCH(DIF_OP_BE, lbl_next);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
 dt_cg_setx(dlp, dnp->dn_left->dn_reg, 1);

 dt_irlist_append(dlp, dt_cg_node_alloc(lbl_next, DIF_INSTR_NOP));
 dt_cg_node(dnp->dn_right, dlp, drp);

 instr = DIF_INSTR_TST(dnp->dn_right->dn_reg);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

 instr = DIF_INSTR_BRANCH(DIF_OP_BE, lbl_tail);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
 dt_cg_setx(dlp, dnp->dn_right->dn_reg, 1);

 instr = DIF_INSTR_FMT(DIF_OP_XOR, dnp->dn_left->dn_reg,
     dnp->dn_right->dn_reg, dnp->dn_left->dn_reg);

 dt_irlist_append(dlp, dt_cg_node_alloc(lbl_tail, instr));

 dt_regset_free(drp, dnp->dn_right->dn_reg);
 dnp->dn_reg = dnp->dn_left->dn_reg;
}
