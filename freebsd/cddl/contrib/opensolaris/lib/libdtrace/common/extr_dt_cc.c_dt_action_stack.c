
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
typedef int dtrace_actdesc_t ;
struct TYPE_3__ {int dn_args; } ;
typedef TYPE_1__ dt_node_t ;


 int dt_action_stack_args (int *,int *,int ) ;
 int * dt_stmt_action (int *,int *) ;

__attribute__((used)) static void
dt_action_stack(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
 dtrace_actdesc_t *ap = dt_stmt_action(dtp, sdp);
 dt_action_stack_args(dtp, ap, dnp->dn_args);
}
