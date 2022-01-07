
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_19__ {int dtpdd_difo; } ;
struct TYPE_20__ {TYPE_1__ dted_pred; } ;
typedef TYPE_2__ dtrace_ecbdesc_t ;
struct TYPE_21__ {int dn_kind; struct TYPE_21__* dn_expr; int dn_attr; int dn_ctxattr; struct TYPE_21__* dn_list; struct TYPE_21__* dn_acts; int * dn_pred; int dn_desc; int dn_line; } ;
typedef TYPE_3__ dt_node_t ;
struct TYPE_22__ {TYPE_2__* pcb_ecbdesc; int * pcb_stmt; int pcb_jmpbuf; } ;


 int DT_IDFLG_REF ;



 scalar_t__ DT_TREEDUMP_PASS (int *,int) ;
 int D_UNKNOWN ;
 int EDT_NOMEM ;
 int _dtrace_defattr ;
 int assert (int) ;
 int dnerror (TYPE_3__*,int ,char*,int) ;
 int dt_as (TYPE_4__*) ;
 int dt_cg (TYPE_4__*,int *) ;
 int dt_compile_agg (int *,TYPE_3__*,int *) ;
 int dt_compile_exp (int *,TYPE_3__*,int *) ;
 int dt_compile_fun (int *,TYPE_3__*,int *) ;
 TYPE_2__* dt_ecbdesc_create (int *,int ) ;
 int dt_ecbdesc_release (int *,TYPE_2__*) ;
 int dt_endcontext (int *) ;
 int dt_node_cook (TYPE_3__*,int ) ;
 int dt_node_printr (TYPE_3__*,int ,int ) ;
 int dt_setcontext (int *,int ) ;
 int dt_stmt_append (int *,TYPE_3__*) ;
 int * dt_stmt_create (int *,TYPE_2__*,int ,int ) ;
 int longjmp (int ,int ) ;
 int stderr ;
 int yylineno ;
 TYPE_4__* yypcb ;

__attribute__((used)) static void
dt_compile_one_clause(dtrace_hdl_t *dtp, dt_node_t *cnp, dt_node_t *pnp)
{
 dtrace_ecbdesc_t *edp;
 dtrace_stmtdesc_t *sdp;
 dt_node_t *dnp;

 yylineno = pnp->dn_line;
 dt_setcontext(dtp, pnp->dn_desc);
 (void) dt_node_cook(cnp, DT_IDFLG_REF);

 if (DT_TREEDUMP_PASS(dtp, 2))
  dt_node_printr(cnp, stderr, 0);

 if ((edp = dt_ecbdesc_create(dtp, pnp->dn_desc)) == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 assert(yypcb->pcb_ecbdesc == ((void*)0));
 yypcb->pcb_ecbdesc = edp;

 if (cnp->dn_pred != ((void*)0)) {
  dt_cg(yypcb, cnp->dn_pred);
  edp->dted_pred.dtpdd_difo = dt_as(yypcb);
 }

 if (cnp->dn_acts == ((void*)0)) {
  dt_stmt_append(dt_stmt_create(dtp, edp,
      cnp->dn_ctxattr, _dtrace_defattr), cnp);
 }

 for (dnp = cnp->dn_acts; dnp != ((void*)0); dnp = dnp->dn_list) {
  assert(yypcb->pcb_stmt == ((void*)0));
  sdp = dt_stmt_create(dtp, edp, cnp->dn_ctxattr, cnp->dn_attr);

  switch (dnp->dn_kind) {
  case 129:
   if (dnp->dn_expr->dn_kind == 130)
    dt_compile_agg(dtp, dnp->dn_expr, sdp);
   else
    dt_compile_exp(dtp, dnp, sdp);
   break;
  case 128:
   dt_compile_fun(dtp, dnp, sdp);
   break;
  case 130:
   dt_compile_agg(dtp, dnp, sdp);
   break;
  default:
   dnerror(dnp, D_UNKNOWN, "internal error -- node kind "
       "%u is not a valid statement\n", dnp->dn_kind);
  }

  assert(yypcb->pcb_stmt == sdp);
  dt_stmt_append(sdp, dnp);
 }

 assert(yypcb->pcb_ecbdesc == edp);
 dt_ecbdesc_release(dtp, edp);
 dt_endcontext(dtp);
 yypcb->pcb_ecbdesc = ((void*)0);
}
