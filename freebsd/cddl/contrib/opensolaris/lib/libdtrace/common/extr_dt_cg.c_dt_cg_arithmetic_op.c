
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint_t ;
typedef int dt_regset_t ;
struct TYPE_6__ {scalar_t__ dn_op; int dn_reg; struct TYPE_6__* dn_right; struct TYPE_6__* dn_left; } ;
typedef TYPE_1__ dt_node_t ;
typedef int dt_irlist_t ;
typedef int dif_instr_t ;


 int DIF_INSTR_FMT (int ,int ,int ,int ) ;
 int DIF_OP_MUL ;
 int DIF_OP_UDIV ;
 int DT_LBL_NONE ;
 scalar_t__ DT_TOK_ADD ;
 scalar_t__ DT_TOK_ADD_EQ ;
 scalar_t__ DT_TOK_SUB ;
 scalar_t__ DT_TOK_SUB_EQ ;
 int assert (int) ;
 int dt_cg_node (TYPE_1__*,int *,int *) ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_ptrsize (TYPE_1__*,int *,int *,int ,int ) ;
 int dt_irlist_append (int *,int ) ;
 int dt_node_is_pointer (TYPE_1__*) ;
 int dt_regset_free (int *,int ) ;

__attribute__((used)) static void
dt_cg_arithmetic_op(dt_node_t *dnp, dt_irlist_t *dlp,
    dt_regset_t *drp, uint_t op)
{
 int is_ptr_op = (dnp->dn_op == DT_TOK_ADD || dnp->dn_op == DT_TOK_SUB ||
     dnp->dn_op == DT_TOK_ADD_EQ || dnp->dn_op == DT_TOK_SUB_EQ);

 int lp_is_ptr = dt_node_is_pointer(dnp->dn_left);
 int rp_is_ptr = dt_node_is_pointer(dnp->dn_right);

 dif_instr_t instr;

 if (lp_is_ptr && rp_is_ptr) {
  assert(dnp->dn_op == DT_TOK_SUB);
  is_ptr_op = 0;
 }

 dt_cg_node(dnp->dn_left, dlp, drp);
 if (is_ptr_op && rp_is_ptr)
  dt_cg_ptrsize(dnp, dlp, drp, DIF_OP_MUL, dnp->dn_left->dn_reg);

 dt_cg_node(dnp->dn_right, dlp, drp);
 if (is_ptr_op && lp_is_ptr)
  dt_cg_ptrsize(dnp, dlp, drp, DIF_OP_MUL, dnp->dn_right->dn_reg);

 instr = DIF_INSTR_FMT(op, dnp->dn_left->dn_reg,
     dnp->dn_right->dn_reg, dnp->dn_left->dn_reg);

 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
 dt_regset_free(drp, dnp->dn_right->dn_reg);
 dnp->dn_reg = dnp->dn_left->dn_reg;

 if (lp_is_ptr && rp_is_ptr)
  dt_cg_ptrsize(dnp->dn_right,
      dlp, drp, DIF_OP_UDIV, dnp->dn_reg);
}
