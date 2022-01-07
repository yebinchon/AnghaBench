
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_25__ {TYPE_2__* dx_ident; int dx_dst_ctfp; int dx_dst_base; TYPE_4__* dx_members; } ;
typedef TYPE_3__ dt_xlator_t ;
typedef int dt_regset_t ;
struct TYPE_26__ {scalar_t__ dn_kind; int dn_reg; int dn_flags; struct TYPE_26__* dn_left; int dn_args; int dn_ident; struct TYPE_26__* dn_right; int dn_membname; int dn_string; struct TYPE_26__* dn_membexpr; struct TYPE_26__* dn_list; int dn_op; } ;
typedef TYPE_4__ dt_node_t ;
typedef int dt_irlist_t ;
struct TYPE_27__ {scalar_t__ di_kind; int di_id; int di_flags; TYPE_3__* di_data; } ;
typedef TYPE_5__ dt_ident_t ;
typedef int dif_instr_t ;
struct TYPE_28__ {int ctm_offset; } ;
typedef TYPE_6__ ctf_membinfo_t ;
struct TYPE_29__ {int pcb_jmpbuf; TYPE_1__* pcb_hdl; } ;
struct TYPE_24__ {int di_id; int di_flags; } ;
struct TYPE_23__ {int dt_ctferr; } ;


 scalar_t__ CTF_ERR ;
 int DIF_INSTR_ALLOCS (int,int) ;
 int DIF_INSTR_FMT (int ,int,int,int) ;
 int DIF_INSTR_STV (int ,int ,int) ;
 int DIF_OP_ADD ;
 scalar_t__ DT_IDENT_ARRAY ;
 int DT_IDENT_XLSOU ;
 int DT_IDFLG_CGREG ;
 int DT_IDFLG_DIFW ;
 int DT_LBL_NONE ;
 int DT_NF_LVALUE ;
 int DT_NF_REF ;
 int DT_NF_WRITABLE ;
 scalar_t__ DT_NODE_IDENT ;
 scalar_t__ DT_NODE_OP2 ;
 scalar_t__ DT_NODE_VAR ;
 int DT_TOK_DOT ;
 int DT_TOK_IDENT ;
 int EDT_CTF ;
 int NBBY ;
 int assert (int) ;
 int bzero (TYPE_4__*,int) ;
 int ctf_errno (int ) ;
 scalar_t__ ctf_member_info (int ,int ,int ,TYPE_6__*) ;
 int ctf_type_size (int ,int ) ;
 int dt_cg_arglist (TYPE_5__*,int ,int *,int *) ;
 int dt_cg_node (TYPE_4__*,int *,int *) ;
 int dt_cg_node_alloc (int ,int ) ;
 int dt_cg_setx (int *,int,int) ;
 int dt_cg_store (TYPE_4__*,int *,int *,TYPE_4__*) ;
 int dt_cg_stvar (TYPE_5__*) ;
 int dt_cg_typecast (TYPE_4__*,TYPE_4__*,int *,int *) ;
 TYPE_5__* dt_ident_resolve (int ) ;
 int dt_irlist_append (int *,int ) ;
 TYPE_5__* dt_node_resolve (TYPE_4__*,int ) ;
 int dt_node_type_propagate (TYPE_4__*,TYPE_4__*) ;
 int dt_regset_alloc (int *) ;
 int dt_regset_free (int *,int) ;
 int longjmp (int ,int ) ;
 TYPE_7__* yypcb ;

__attribute__((used)) static void
dt_cg_asgn_op(dt_node_t *dnp, dt_irlist_t *dlp, dt_regset_t *drp)
{
 dif_instr_t instr;
 dt_ident_t *idp;







 if ((idp = dt_node_resolve(dnp->dn_right, DT_IDENT_XLSOU)) != ((void*)0)) {
  ctf_membinfo_t ctm;
  dt_xlator_t *dxp = idp->di_data;
  dt_node_t *mnp, dn, mn;
  int r1, r2;







  bzero(&dn, sizeof (dt_node_t));
  dn.dn_kind = DT_NODE_OP2;
  dn.dn_op = DT_TOK_DOT;
  dn.dn_left = dnp;
  dn.dn_right = &mn;

  bzero(&mn, sizeof (dt_node_t));
  mn.dn_kind = DT_NODE_IDENT;
  mn.dn_op = DT_TOK_IDENT;






  r1 = dt_regset_alloc(drp);
  dt_cg_setx(dlp, r1,
      ctf_type_size(dxp->dx_dst_ctfp, dxp->dx_dst_base));

  instr = DIF_INSTR_ALLOCS(r1, r1);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));







  dxp->dx_ident->di_flags |= DT_IDFLG_CGREG;
  dxp->dx_ident->di_id = dnp->dn_right->dn_reg;

  for (mnp = dxp->dx_members; mnp != ((void*)0); mnp = mnp->dn_list) {




   dt_cg_node(mnp->dn_membexpr, dlp, drp);
   mnp->dn_reg = mnp->dn_membexpr->dn_reg;
   dt_cg_typecast(mnp->dn_membexpr, mnp, dlp, drp);






   if (ctf_member_info(dxp->dx_dst_ctfp, dxp->dx_dst_base,
       mnp->dn_membname, &ctm) == CTF_ERR) {
    yypcb->pcb_hdl->dt_ctferr =
        ctf_errno(dxp->dx_dst_ctfp);
    longjmp(yypcb->pcb_jmpbuf, EDT_CTF);
   }







   if (ctm.ctm_offset != 0) {
    r2 = dt_regset_alloc(drp);







    dt_cg_setx(dlp, r2, ctm.ctm_offset / NBBY);
    instr = DIF_INSTR_FMT(DIF_OP_ADD, r1, r2, r2);
    dt_irlist_append(dlp,
        dt_cg_node_alloc(DT_LBL_NONE, instr));

    dt_node_type_propagate(mnp, &dn);
    dn.dn_right->dn_string = mnp->dn_membname;
    dn.dn_reg = r2;

    dt_cg_store(mnp, dlp, drp, &dn);
    dt_regset_free(drp, r2);

   } else {
    dt_node_type_propagate(mnp, &dn);
    dn.dn_right->dn_string = mnp->dn_membname;
    dn.dn_reg = r1;

    dt_cg_store(mnp, dlp, drp, &dn);
   }

   dt_regset_free(drp, mnp->dn_reg);
  }

  dxp->dx_ident->di_flags &= ~DT_IDFLG_CGREG;
  dxp->dx_ident->di_id = 0;

  if (dnp->dn_right->dn_reg != -1)
   dt_regset_free(drp, dnp->dn_right->dn_reg);

  assert(dnp->dn_reg == dnp->dn_right->dn_reg);
  dnp->dn_reg = r1;
 }
 if (dnp->dn_left->dn_kind == DT_NODE_VAR) {
  idp = dt_ident_resolve(dnp->dn_left->dn_ident);

  if (idp->di_kind == DT_IDENT_ARRAY)
   dt_cg_arglist(idp, dnp->dn_left->dn_args, dlp, drp);

  idp->di_flags |= DT_IDFLG_DIFW;
  instr = DIF_INSTR_STV(dt_cg_stvar(idp),
      idp->di_id, dnp->dn_reg);
  dt_irlist_append(dlp, dt_cg_node_alloc(DT_LBL_NONE, instr));
 } else {
  uint_t rbit = dnp->dn_left->dn_flags & DT_NF_REF;

  assert(dnp->dn_left->dn_flags & DT_NF_WRITABLE);
  assert(dnp->dn_left->dn_flags & DT_NF_LVALUE);

  dnp->dn_left->dn_flags |= DT_NF_REF;

  dt_cg_node(dnp->dn_left, dlp, drp);
  dt_cg_store(dnp, dlp, drp, dnp->dn_left);
  dt_regset_free(drp, dnp->dn_left->dn_reg);

  dnp->dn_left->dn_flags &= ~DT_NF_REF;
  dnp->dn_left->dn_flags |= rbit;
 }
}
