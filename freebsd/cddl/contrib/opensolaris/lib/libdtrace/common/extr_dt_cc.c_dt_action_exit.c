
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_8__ {TYPE_5__* dtad_difo; int dtad_kind; } ;
typedef TYPE_2__ dtrace_actdesc_t ;
struct TYPE_9__ {int dn_args; } ;
typedef TYPE_3__ dt_node_t ;
struct TYPE_7__ {int dtdt_size; } ;
struct TYPE_10__ {TYPE_1__ dtdo_rtype; } ;


 int DTRACEACT_EXIT ;
 TYPE_5__* dt_as (int ) ;
 int dt_cg (int ,int ) ;
 TYPE_2__* dt_stmt_action (int *,int *) ;
 int yypcb ;

__attribute__((used)) static void
dt_action_exit(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
 dtrace_actdesc_t *ap = dt_stmt_action(dtp, sdp);

 dt_cg(yypcb, dnp->dn_args);
 ap->dtad_difo = dt_as(yypcb);
 ap->dtad_kind = DTRACEACT_EXIT;
 ap->dtad_difo->dtdo_rtype.dtdt_size = sizeof (int);
}
