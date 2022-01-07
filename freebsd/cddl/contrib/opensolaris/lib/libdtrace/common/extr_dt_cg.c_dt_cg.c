
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {TYPE_3__* dx_ident; } ;
typedef TYPE_4__ dt_xlator_t ;
struct TYPE_18__ {int * pcb_regs; int pcb_ir; TYPE_6__* pcb_dret; int pcb_jmpbuf; int * pcb_strtab; int * pcb_inttab; TYPE_2__* pcb_hdl; } ;
typedef TYPE_5__ dt_pcb_t ;
struct TYPE_19__ {scalar_t__ dn_kind; int dn_reg; struct TYPE_19__* dn_membexpr; TYPE_4__* dn_membxlator; } ;
typedef TYPE_6__ dt_node_t ;
typedef int dt_ident_t ;
typedef int dif_instr_t ;
struct TYPE_20__ {int pcb_hdl; } ;
struct TYPE_16__ {int di_id; int di_flags; } ;
struct TYPE_14__ {int dtc_difintregs; } ;
struct TYPE_15__ {TYPE_1__ dt_conf; } ;


 int BUFSIZ ;
 int DIF_INSTR_RET (int) ;
 int DT_IDENT_XLPTR ;
 int DT_IDENT_XLSOU ;
 int DT_IDFLG_CGREG ;
 int DT_LBL_NONE ;
 scalar_t__ DT_NODE_MEMBER ;
 int D_CG_DYN ;
 int EDT_NOMEM ;
 int assert (int ) ;
 int dnerror (TYPE_6__*,int ,char*) ;
 int dt_cg_node (TYPE_6__*,int *,int *) ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_xlate_expand (TYPE_6__*,int *,int *,int *) ;
 int * dt_inttab_create (int ) ;
 int dt_inttab_destroy (int *) ;
 int dt_irlist_append (int *,int ) ;
 int dt_irlist_create (int *) ;
 int dt_irlist_destroy (int *) ;
 int * dt_node_resolve (TYPE_6__*,int ) ;
 int dt_regset_alloc (int *) ;
 int dt_regset_assert_free (int *) ;
 int * dt_regset_create (int ) ;
 int dt_regset_free (int *,int) ;
 int dt_regset_reset (int *) ;
 int * dt_strtab_create (int ) ;
 int dt_strtab_destroy (int *) ;
 int longjmp (int ,int ) ;
 TYPE_7__* yypcb ;

void
dt_cg(dt_pcb_t *pcb, dt_node_t *dnp)
{
 dif_instr_t instr;
 dt_xlator_t *dxp;
 dt_ident_t *idp;

 if (pcb->pcb_regs == ((void*)0) && (pcb->pcb_regs =
     dt_regset_create(pcb->pcb_hdl->dt_conf.dtc_difintregs)) == ((void*)0))
  longjmp(pcb->pcb_jmpbuf, EDT_NOMEM);

 dt_regset_reset(pcb->pcb_regs);
 (void) dt_regset_alloc(pcb->pcb_regs);

 if (pcb->pcb_inttab != ((void*)0))
  dt_inttab_destroy(pcb->pcb_inttab);

 if ((pcb->pcb_inttab = dt_inttab_create(yypcb->pcb_hdl)) == ((void*)0))
  longjmp(pcb->pcb_jmpbuf, EDT_NOMEM);

 if (pcb->pcb_strtab != ((void*)0))
  dt_strtab_destroy(pcb->pcb_strtab);

 if ((pcb->pcb_strtab = dt_strtab_create(BUFSIZ)) == ((void*)0))
  longjmp(pcb->pcb_jmpbuf, EDT_NOMEM);

 dt_irlist_destroy(&pcb->pcb_ir);
 dt_irlist_create(&pcb->pcb_ir);

 assert(pcb->pcb_dret == ((void*)0));
 pcb->pcb_dret = dnp;

 if (dt_node_resolve(dnp, DT_IDENT_XLPTR) != ((void*)0)) {
  dnerror(dnp, D_CG_DYN, "expression cannot evaluate to result "
      "of a translated pointer\n");
 }





 if (dnp->dn_kind == DT_NODE_MEMBER) {
  dxp = dnp->dn_membxlator;
  dnp = dnp->dn_membexpr;

  dxp->dx_ident->di_flags |= DT_IDFLG_CGREG;
  dxp->dx_ident->di_id = dt_regset_alloc(pcb->pcb_regs);
 }

 dt_cg_node(dnp, &pcb->pcb_ir, pcb->pcb_regs);

 if ((idp = dt_node_resolve(dnp, DT_IDENT_XLSOU)) != ((void*)0)) {
  int reg = dt_cg_xlate_expand(dnp, idp,
      &pcb->pcb_ir, pcb->pcb_regs);
  dt_regset_free(pcb->pcb_regs, dnp->dn_reg);
  dnp->dn_reg = reg;
 }

 instr = DIF_INSTR_RET(dnp->dn_reg);
 dt_regset_free(pcb->pcb_regs, dnp->dn_reg);
 dt_irlist_append(&pcb->pcb_ir, dt_cg_node_alloc(DT_LBL_NONE, instr));

 if (dnp->dn_kind == DT_NODE_MEMBER) {
  dt_regset_free(pcb->pcb_regs, dxp->dx_ident->di_id);
  dxp->dx_ident->di_id = 0;
  dxp->dx_ident->di_flags &= ~DT_IDFLG_CGREG;
 }

 dt_regset_free(pcb->pcb_regs, 0);
 dt_regset_assert_free(pcb->pcb_regs);
}
