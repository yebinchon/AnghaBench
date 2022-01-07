
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint_t ;
typedef int dt_regset_t ;
struct TYPE_7__ {int dn_reg; TYPE_6__* dn_left; TYPE_6__* dn_right; TYPE_6__* dn_expr; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_8__ {void* di_instr; } ;
typedef TYPE_2__ dt_irnode_t ;
typedef int dt_irlist_t ;
typedef void* dif_instr_t ;
struct TYPE_9__ {int dn_reg; } ;


 void* DIF_INSTR_BRANCH (int ,int ) ;
 void* DIF_INSTR_MOV (int ,int ) ;
 void* DIF_INSTR_NOP ;
 void* DIF_INSTR_TST (int ) ;
 int DIF_OP_BA ;
 int DIF_OP_BE ;
 int DIF_REG_R0 ;
 int DT_LBL_NONE ;
 int dt_cg_node (TYPE_6__*,int *,int *) ;
 TYPE_2__* dt_cg_node_alloc (int ,void*) ;
 int dt_irlist_append (int *,TYPE_2__*) ;
 int dt_irlist_label (int *) ;
 int dt_regset_free (int *,int ) ;

__attribute__((used)) static void
dt_cg_ternary_op(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp)
{
 uint_t lbl_false = dt_irlist_label(dlp);
 uint_t lbl_post = dt_irlist_label(dlp);

 dif_instr_t instr;
 dt_irnode_t *dip;

 dt_cg_node(dnp->dn_expr, dlp, drp);
 instr = DIF_INSTR_TST(dnp->dn_expr->dn_reg);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
 dt_regset_free(drp, dnp->dn_expr->dn_reg);

 instr = DIF_INSTR_BRANCH(DIF_OP_BE, lbl_false);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

 dt_cg_node(dnp->dn_left, dlp, drp);
 instr = DIF_INSTR_MOV(dnp->dn_left->dn_reg, DIF_REG_R0);
 dip = dt_cg_node_alloc(DT_LBL_NONE, instr);
 dt_irlist_append(dlp, dip);
 dt_regset_free(drp, dnp->dn_left->dn_reg);

 instr = DIF_INSTR_BRANCH(DIF_OP_BA, lbl_post);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

 dt_irlist_append(dlp, dt_cg_node_alloc(lbl_false, DIF_INSTR_NOP));
 dt_cg_node(dnp->dn_right, dlp, drp);
 dnp->dn_reg = dnp->dn_right->dn_reg;






 dip->di_instr = DIF_INSTR_MOV(dnp->dn_left->dn_reg, dnp->dn_reg);
 dt_irlist_append(dlp, dt_cg_node_alloc(lbl_post, DIF_INSTR_NOP));
}
