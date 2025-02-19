
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;


typedef int uint_t ;
struct TYPE_17__ {int dtdt_flags; scalar_t__ dtdt_size; int dtdt_kind; } ;
typedef TYPE_2__ dtrace_diftype_t ;
typedef int dt_regset_t ;
struct TYPE_18__ {int dn_reg; struct TYPE_18__* dn_list; } ;
typedef TYPE_3__ dt_node_t ;
typedef int dt_irlist_t ;
struct TYPE_19__ {TYPE_11__* dis_args; } ;
typedef TYPE_4__ dt_idsig_t ;
struct TYPE_20__ {TYPE_4__* di_data; } ;
typedef TYPE_5__ dt_ident_t ;
typedef int dif_instr_t ;
struct TYPE_16__ {int dtc_diftupregs; } ;
struct TYPE_22__ {TYPE_1__ dt_conf; } ;
struct TYPE_21__ {int pcb_jmpbuf; TYPE_7__* pcb_hdl; } ;
struct TYPE_15__ {int dn_reg; } ;


 int DIF_INSTR_FLUSHTS ;
 int DIF_INSTR_PUSHTS (int ,int ,int,int) ;
 int DIF_OP_PUSHTR ;
 int DIF_OP_PUSHTV ;
 int DIF_REG_R0 ;
 int DIF_TF_BYREF ;
 int DT_LBL_NONE ;
 int EDT_NOTUPREG ;
 int dt_cg_node (TYPE_3__*,int *,int *) ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_setx (int *,int,scalar_t__) ;
 int dt_cg_typecast (TYPE_3__*,TYPE_11__*,int *,int *) ;
 int dt_irlist_append (int *,int ) ;
 int dt_node_diftype (TYPE_7__*,TYPE_3__*,TYPE_2__*) ;
 int dt_regset_alloc (int *) ;
 int dt_regset_free (int *,int) ;
 int longjmp (int ,int ) ;
 TYPE_6__* yypcb ;

__attribute__((used)) static void
dt_cg_arglist(dt_ident_t *idp, dt_node_t *args,
    dt_irlist_t *dlp, dt_regset_t *drp)
{
 const dt_idsig_t *isp = idp->di_data;
 dt_node_t *dnp;
 int i = 0;

 for (dnp = args; dnp != ((void*)0); dnp = dnp->dn_list)
  dt_cg_node(dnp, dlp, drp);

 dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, DIF_INSTR_FLUSHTS));

 for (dnp = args; dnp != ((void*)0); dnp = dnp->dn_list, i++) {
  dtrace_diftype_t t;
  dif_instr_t instr;
  uint_t op;
  int reg;

  dt_node_diftype(yypcb->pcb_hdl, dnp, &t);

  isp->dis_args[i].dn_reg = dnp->dn_reg;
  dt_cg_typecast(dnp, &isp->dis_args[i], dlp, drp);
  isp->dis_args[i].dn_reg = -1;

  if (t.dtdt_flags & DIF_TF_BYREF) {
   op = DIF_OP_PUSHTR;
   if (t.dtdt_size != 0) {
    reg = dt_regset_alloc(drp);
    dt_cg_setx(dlp, reg, t.dtdt_size);
   } else {
    reg = DIF_REG_R0;
   }
  } else {
   op = DIF_OP_PUSHTV;
   reg = DIF_REG_R0;
  }

  instr = DIF_INSTR_PUSHTS(op, t.dtdt_kind, reg, dnp->dn_reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
  dt_regset_free(drp, dnp->dn_reg);

  if (reg != DIF_REG_R0)
   dt_regset_free(drp, reg);
 }

 if (i > yypcb->pcb_hdl->dt_conf.dtc_diftupregs)
  longjmp(yypcb->pcb_jmpbuf, EDT_NOTUPREG);
}
