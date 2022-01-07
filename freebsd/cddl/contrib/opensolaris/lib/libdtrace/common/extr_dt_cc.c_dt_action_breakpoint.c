
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_3__ {scalar_t__ dtad_arg; int dtad_kind; } ;
typedef TYPE_1__ dtrace_actdesc_t ;
typedef int dt_node_t ;


 int DTRACEACT_BREAKPOINT ;
 TYPE_1__* dt_stmt_action (int *,int *) ;

__attribute__((used)) static void
dt_action_breakpoint(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
 dtrace_actdesc_t *ap = dt_stmt_action(dtp, sdp);

 ap->dtad_kind = DTRACEACT_BREAKPOINT;
 ap->dtad_arg = 0;
}
