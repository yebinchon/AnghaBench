
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uintmax_t ;
typedef int uint_t ;
typedef int uint64_t ;
typedef int dt_regset_t ;
struct TYPE_9__ {size_t* pr_mapping; } ;
typedef TYPE_1__ dt_probe_t ;
struct TYPE_10__ {scalar_t__ dn_kind; int dn_reg; int dn_flags; TYPE_7__* dn_args; TYPE_3__* dn_ident; } ;
typedef TYPE_2__ dt_node_t ;
typedef int dt_irlist_t ;
struct TYPE_11__ {int di_flags; scalar_t__ di_id; scalar_t__ di_kind; int di_data; } ;
typedef TYPE_3__ dt_ident_t ;
typedef int dif_instr_t ;
struct TYPE_13__ {size_t dn_value; scalar_t__ dn_kind; int dn_reg; int * dn_list; } ;
struct TYPE_12__ {TYPE_1__* pcb_probe; } ;


 int DIF_INSTR_FMT (int ,int,int,int) ;
 int DIF_INSTR_LDA (int ,scalar_t__,int,int) ;
 int DIF_OP_LDGA ;
 int DIF_OP_LDTA ;
 int DIF_OP_SLL ;
 int DIF_OP_SRA ;
 int DIF_OP_SRL ;
 scalar_t__ DIF_VAR_ARGS ;
 scalar_t__ DT_IDENT_XLPTR ;
 scalar_t__ DT_IDENT_XLSOU ;
 int DT_IDFLG_DIFR ;
 int DT_IDFLG_LOCAL ;
 int DT_IDFLG_TLS ;
 int DT_LBL_NONE ;
 int DT_NF_SIGNED ;
 scalar_t__ DT_NODE_INT ;
 scalar_t__ DT_NODE_VAR ;
 int NBBY ;
 int assert (int) ;
 int dt_cg_node (TYPE_7__*,int *,int *) ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_setx (int *,int,int) ;
 int dt_irlist_append (int *,int ) ;
 int dt_node_is_scalar (TYPE_2__*) ;
 size_t dt_node_type_size (TYPE_2__*) ;
 int dt_regset_alloc (int *) ;
 int dt_regset_free (int *,int) ;
 scalar_t__ dt_xlator_dynamic (int ) ;
 TYPE_4__* yypcb ;

__attribute__((used)) static void
dt_cg_array_op(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp)
{
 dt_probe_t *prp = yypcb->pcb_probe;
 uintmax_t saved = dnp->dn_args->dn_value;
 dt_ident_t *idp = dnp->dn_ident;

 dif_instr_t instr;
 uint_t op;
 size_t size;
 int reg, n;

 assert(dnp->dn_kind == DT_NODE_VAR);
 assert(!(idp->di_flags & DT_IDFLG_LOCAL));

 assert(dnp->dn_args->dn_kind == DT_NODE_INT);
 assert(dnp->dn_args->dn_list == ((void*)0));
 if (idp->di_id == DIF_VAR_ARGS) {
  if ((idp->di_kind == DT_IDENT_XLPTR ||
      idp->di_kind == DT_IDENT_XLSOU) &&
      dt_xlator_dynamic(idp->di_data)) {
   dnp->dn_reg = -1;
   return;
  }
  dnp->dn_args->dn_value = prp->pr_mapping[saved];
 }

 dt_cg_node(dnp->dn_args, dlp, drp);
 dnp->dn_args->dn_value = saved;

 dnp->dn_reg = dnp->dn_args->dn_reg;

 if (idp->di_flags & DT_IDFLG_TLS)
  op = DIF_OP_LDTA;
 else
  op = DIF_OP_LDGA;

 idp->di_flags |= DT_IDFLG_DIFR;

 instr = DIF_INSTR_LDA(op, idp->di_id,
     dnp->dn_args->dn_reg, dnp->dn_reg);

 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
 if (idp->di_id != DIF_VAR_ARGS || !dt_node_is_scalar(dnp))
  return;

 if ((size = dt_node_type_size(dnp)) == sizeof (uint64_t))
  return;

 reg = dt_regset_alloc(drp);
 assert(size < sizeof (uint64_t));
 n = sizeof (uint64_t) * NBBY - size * NBBY;

 dt_cg_setx(dlp, reg, n);

 instr = DIF_INSTR_FMT(DIF_OP_SLL, dnp->dn_reg, reg, dnp->dn_reg);
 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));

 instr = DIF_INSTR_FMT((dnp->dn_flags & DT_NF_SIGNED) ?
     DIF_OP_SRA : DIF_OP_SRL, dnp->dn_reg, reg, dnp->dn_reg);

 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
 dt_regset_free(drp, reg);
}
