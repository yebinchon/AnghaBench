
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_4__ {int dtad_arg; } ;
typedef TYPE_1__ dtrace_actdesc_t ;
typedef int dt_node_t ;


 int DTRACEACT_LIBACT ;
 int DT_ACT_FTRUNCATE ;
 int dt_action_difconst (TYPE_1__*,int ,int ) ;
 TYPE_1__* dt_stmt_action (int *,int *) ;

__attribute__((used)) static void
dt_action_ftruncate(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
 dtrace_actdesc_t *ap = dt_stmt_action(dtp, sdp);







 dt_action_difconst(ap, 0, DTRACEACT_LIBACT);
 ap->dtad_arg = DT_ACT_FTRUNCATE;
}
