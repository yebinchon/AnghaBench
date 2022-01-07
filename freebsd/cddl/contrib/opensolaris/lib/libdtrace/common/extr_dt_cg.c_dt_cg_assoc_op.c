
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int dt_regset_t ;
struct TYPE_5__ {scalar_t__ dn_kind; int dn_flags; int dn_reg; TYPE_4__* dn_ident; int * dn_args; } ;
typedef TYPE_1__ dt_node_t ;
typedef int dt_irlist_t ;
typedef int dif_instr_t ;
struct TYPE_6__ {int di_flags; int di_id; } ;


 int DIF_INSTR_ALLOCS (int ,int ) ;
 int DIF_INSTR_BRANCH (int ,scalar_t__) ;
 int DIF_INSTR_LDV (scalar_t__,int ,int ) ;
 int DIF_INSTR_NOP ;
 int DIF_INSTR_STV (scalar_t__,int ,int ) ;
 int DIF_INSTR_TST (int ) ;
 int DIF_OP_BNE ;
 scalar_t__ DIF_OP_LDGAA ;
 scalar_t__ DIF_OP_LDTAA ;
 scalar_t__ DIF_OP_STGAA ;
 scalar_t__ DIF_OP_STTAA ;
 int DT_IDFLG_DIFR ;
 int DT_IDFLG_DIFW ;
 int DT_IDFLG_LOCAL ;
 int DT_IDFLG_TLS ;
 scalar_t__ DT_LBL_NONE ;
 int DT_NF_REF ;
 scalar_t__ DT_NODE_VAR ;
 int assert (int) ;
 int dt_cg_arglist (TYPE_4__*,int *,int *,int *) ;
 int dt_cg_node_alloc (scalar_t__,int ) ;
 int dt_cg_setx (int *,int ,int ) ;
 int dt_irlist_append (int *,int ) ;
 scalar_t__ dt_irlist_label (int *) ;
 int dt_node_type_size (TYPE_1__*) ;
 int dt_regset_alloc (int *) ;

__attribute__((used)) static void
dt_cg_assoc_op(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp)
{
 dif_instr_t instr;
 uint_t op;

 assert(dnp->dn_kind == DT_NODE_VAR);
 assert(!(dnp->dn_ident->di_flags & DT_IDFLG_LOCAL));
 assert(dnp->dn_args != ((void*)0));

 dt_cg_arglist(dnp->dn_ident, dnp->dn_args, dlp, drp);

 dnp->dn_reg = dt_regset_alloc(drp);

 if (dnp->dn_ident->di_flags & DT_IDFLG_TLS)
  op = DIF_OP_LDTAA;
 else
  op = DIF_OP_LDGAA;

 dnp->dn_ident->di_flags |= DT_IDFLG_DIFR;
 instr = DIF_INSTR_LDV(op, dnp->dn_ident->di_id, dnp->dn_reg);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
 if (dnp->dn_flags & DT_NF_REF) {
  uint_t stvop = op == DIF_OP_LDTAA ? DIF_OP_STTAA : DIF_OP_STGAA;
  uint_t label = dt_irlist_label(dlp);

  instr = DIF_INSTR_TST(dnp->dn_reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

  instr = DIF_INSTR_BRANCH(DIF_OP_BNE, label);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

  dt_cg_setx(dlp, dnp->dn_reg, dt_node_type_size(dnp));
  instr = DIF_INSTR_ALLOCS(dnp->dn_reg, dnp->dn_reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

  dnp->dn_ident->di_flags |= DT_IDFLG_DIFW;
  instr = DIF_INSTR_STV(stvop, dnp->dn_ident->di_id, dnp->dn_reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

  instr = DIF_INSTR_LDV(op, dnp->dn_ident->di_id, dnp->dn_reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

  dt_irlist_append(dlp, dt_cg_node_alloc(label, DIF_INSTR_NOP));
 }
}
