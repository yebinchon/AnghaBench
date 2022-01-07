
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint_t ;
typedef int jmp_buf ;
struct TYPE_13__ {int dn_acts; TYPE_5__* dn_pred; int dn_attr; int dn_ctxattr; } ;
typedef TYPE_3__ dt_node_t ;
struct TYPE_15__ {int dn_attr; } ;
struct TYPE_11__ {int dtp_attr; } ;
struct TYPE_14__ {int pcb_jmpbuf; TYPE_2__* pcb_hdl; TYPE_1__ pcb_pinfo; } ;
struct TYPE_12__ {scalar_t__ dt_errtag; } ;


 int D_IDENT_UNDEF ;
 int D_PRED_SCALAR ;
 int D_VAR_UNDEF ;
 int volatile EDT_COMPILER ;
 int bcopy (int ,int ,int) ;
 int dt_attr_min (int ,int ) ;
 scalar_t__ dt_errtag (int ) ;
 int dt_node_attr_assign (TYPE_3__*,int ) ;
 TYPE_5__* dt_node_cook (TYPE_5__*,int ) ;
 int dt_node_is_scalar (TYPE_5__*) ;
 int dt_node_list_cook (int *,int ) ;
 int longjmp (int ,int volatile) ;
 int setjmp (int ) ;
 int xyerror (int ,char*) ;
 int yylabel (char*) ;
 TYPE_4__* yypcb ;

__attribute__((used)) static dt_node_t *
dt_cook_clause(dt_node_t *dnp, uint_t idflags)
{
 volatile int err, tries;
 jmp_buf ojb;





 dt_node_attr_assign(dnp, yypcb->pcb_pinfo.dtp_attr);
 dnp->dn_ctxattr = yypcb->pcb_pinfo.dtp_attr;

 bcopy(yypcb->pcb_jmpbuf, ojb, sizeof (jmp_buf));
 tries = 0;

 if (dnp->dn_pred != ((void*)0) && (err = setjmp(yypcb->pcb_jmpbuf)) != 0) {
  bcopy(ojb, yypcb->pcb_jmpbuf, sizeof (jmp_buf));
  if (tries++ != 0 || err != EDT_COMPILER || (
      yypcb->pcb_hdl->dt_errtag != dt_errtag(D_IDENT_UNDEF) &&
      yypcb->pcb_hdl->dt_errtag != dt_errtag(D_VAR_UNDEF)))
   longjmp(yypcb->pcb_jmpbuf, err);
 }

 if (tries == 0) {
  yylabel("action list");

  dt_node_attr_assign(dnp,
      dt_node_list_cook(&dnp->dn_acts, idflags));

  bcopy(ojb, yypcb->pcb_jmpbuf, sizeof (jmp_buf));
  yylabel(((void*)0));
 }

 if (dnp->dn_pred != ((void*)0)) {
  yylabel("predicate");

  dnp->dn_pred = dt_node_cook(dnp->dn_pred, idflags);
  dt_node_attr_assign(dnp,
      dt_attr_min(dnp->dn_attr, dnp->dn_pred->dn_attr));

  if (!dt_node_is_scalar(dnp->dn_pred)) {
   xyerror(D_PRED_SCALAR,
       "predicate result must be of scalar type\n");
  }

  yylabel(((void*)0));
 }

 if (tries != 0) {
  yylabel("action list");

  dt_node_attr_assign(dnp,
      dt_node_list_cook(&dnp->dn_acts, idflags));

  yylabel(((void*)0));
 }

 return (dnp);
}
