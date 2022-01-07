
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_5__ {int dtad_kind; int dtad_difo; } ;
typedef TYPE_1__ dtrace_actdesc_t ;
struct TYPE_6__ {int dn_args; } ;
typedef TYPE_2__ dt_node_t ;


 int DTRACEACT_CHILL ;
 int dt_as (int ) ;
 int dt_cg (int ,int ) ;
 TYPE_1__* dt_stmt_action (int *,int *) ;
 int yypcb ;

__attribute__((used)) static void
dt_action_chill(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
 dtrace_actdesc_t *ap = dt_stmt_action(dtp, sdp);

 dt_cg(yypcb, dnp->dn_args);
 ap->dtad_difo = dt_as(yypcb);
 ap->dtad_kind = DTRACEACT_CHILL;
}
