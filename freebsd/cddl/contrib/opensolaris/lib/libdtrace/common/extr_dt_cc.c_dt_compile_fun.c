
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_28__ {TYPE_4__* dn_expr; } ;
typedef TYPE_2__ dt_node_t ;
struct TYPE_29__ {TYPE_1__* dn_ident; } ;
struct TYPE_27__ {int di_id; int di_name; } ;


 int DTRACEACT_FREOPEN ;
 int DTRACEACT_MOD ;
 int DTRACEACT_PRINTF ;
 int DTRACEACT_SYM ;
 int DTRACEACT_SYSTEM ;
 int DTRACEACT_UADDR ;
 int DTRACEACT_UMOD ;
 int DTRACEACT_USYM ;
 int D_UNKNOWN ;
 int dnerror (TYPE_4__*,int ,char*,int ) ;
 int dt_action_breakpoint (int *,TYPE_4__*,int *) ;
 int dt_action_chill (int *,TYPE_4__*,int *) ;
 int dt_action_clear (int *,TYPE_4__*,int *) ;
 int dt_action_commit (int *,TYPE_4__*,int *) ;
 int dt_action_discard (int *,TYPE_4__*,int *) ;
 int dt_action_exit (int *,TYPE_4__*,int *) ;
 int dt_action_ftruncate (int *,TYPE_4__*,int *) ;
 int dt_action_normalize (int *,TYPE_4__*,int *) ;
 int dt_action_panic (int *,TYPE_4__*,int *) ;
 int dt_action_printa (int *,TYPE_4__*,int *) ;
 int dt_action_printflike (int *,TYPE_4__*,int *,int ) ;
 int dt_action_printm (int *,TYPE_4__*,int *) ;
 int dt_action_raise (int *,TYPE_4__*,int *) ;
 int dt_action_setopt (int *,TYPE_4__*,int *) ;
 int dt_action_speculate (int *,TYPE_4__*,int *) ;
 int dt_action_stack (int *,TYPE_4__*,int *) ;
 int dt_action_stop (int *,TYPE_4__*,int *) ;
 int dt_action_symmod (int *,TYPE_4__*,int *,int ) ;
 int dt_action_trace (int *,TYPE_4__*,int *) ;
 int dt_action_tracemem (int *,TYPE_4__*,int *) ;
 int dt_action_trunc (int *,TYPE_4__*,int *) ;
 int dt_action_ustack (int *,TYPE_4__*,int *) ;

__attribute__((used)) static void
dt_compile_fun(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
 switch (dnp->dn_expr->dn_ident->di_id) {
 case 158:
  dt_action_breakpoint(dtp, dnp->dn_expr, sdp);
  break;
 case 157:
  dt_action_chill(dtp, dnp->dn_expr, sdp);
  break;
 case 156:
  dt_action_clear(dtp, dnp->dn_expr, sdp);
  break;
 case 155:
  dt_action_commit(dtp, dnp->dn_expr, sdp);
  break;
 case 154:
  dt_action_normalize(dtp, dnp->dn_expr, sdp);
  break;
 case 153:
  dt_action_discard(dtp, dnp->dn_expr, sdp);
  break;
 case 152:
  dt_action_exit(dtp, dnp->dn_expr, sdp);
  break;
 case 151:
  dt_action_printflike(dtp, dnp->dn_expr, sdp, DTRACEACT_FREOPEN);
  break;
 case 150:
  dt_action_ftruncate(dtp, dnp->dn_expr, sdp);
  break;
 case 148:
  dt_action_symmod(dtp, dnp->dn_expr, sdp, DTRACEACT_MOD);
  break;
 case 147:
  dt_action_normalize(dtp, dnp->dn_expr, sdp);
  break;
 case 146:
  dt_action_panic(dtp, dnp->dn_expr, sdp);
  break;
 case 145:
  dt_action_trace(dtp, dnp->dn_expr, sdp);
  break;
 case 144:
  dt_action_printa(dtp, dnp->dn_expr, sdp);
  break;
 case 143:
  dt_action_printflike(dtp, dnp->dn_expr, sdp, DTRACEACT_PRINTF);
  break;
 case 142:
  dt_action_printm(dtp, dnp->dn_expr, sdp);
  break;
 case 141:
  dt_action_raise(dtp, dnp->dn_expr, sdp);
  break;
 case 140:
  dt_action_setopt(dtp, dnp->dn_expr, sdp);
  break;
 case 139:
  dt_action_speculate(dtp, dnp->dn_expr, sdp);
  break;
 case 138:
  dt_action_stack(dtp, dnp->dn_expr, sdp);
  break;
 case 137:
  dt_action_stop(dtp, dnp->dn_expr, sdp);
  break;
 case 136:
  dt_action_symmod(dtp, dnp->dn_expr, sdp, DTRACEACT_SYM);
  break;
 case 135:
  dt_action_printflike(dtp, dnp->dn_expr, sdp, DTRACEACT_SYSTEM);
  break;
 case 134:
  dt_action_trace(dtp, dnp->dn_expr, sdp);
  break;
 case 133:
  dt_action_tracemem(dtp, dnp->dn_expr, sdp);
  break;
 case 132:
  dt_action_trunc(dtp, dnp->dn_expr, sdp);
  break;
 case 131:
  dt_action_symmod(dtp, dnp->dn_expr, sdp, DTRACEACT_UADDR);
  break;
 case 130:
  dt_action_symmod(dtp, dnp->dn_expr, sdp, DTRACEACT_UMOD);
  break;
 case 128:
  dt_action_symmod(dtp, dnp->dn_expr, sdp, DTRACEACT_USYM);
  break;
 case 129:
 case 149:
  dt_action_ustack(dtp, dnp->dn_expr, sdp);
  break;
 default:
  dnerror(dnp->dn_expr, D_UNKNOWN, "tracing function %s( ) is "
      "not yet supported\n", dnp->dn_expr->dn_ident->di_name);
 }
}
