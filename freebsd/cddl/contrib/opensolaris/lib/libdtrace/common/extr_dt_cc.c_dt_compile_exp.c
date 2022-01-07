
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
struct TYPE_6__ {int dtad_kind; TYPE_5__* dtad_difo; } ;
typedef TYPE_1__ dtrace_actdesc_t ;
struct TYPE_7__ {int dn_expr; } ;
typedef TYPE_2__ dt_node_t ;
struct TYPE_8__ {int dtdo_rtype; } ;


 int DTRACEACT_DIFEXPR ;
 TYPE_5__* dt_as (int ) ;
 int dt_cg (int ,int ) ;
 TYPE_1__* dt_stmt_action (int *,int *) ;
 int dt_void_rtype ;
 int yypcb ;

__attribute__((used)) static void
dt_compile_exp(dtrace_hdl_t *dtp, dt_node_t *dnp, dtrace_stmtdesc_t *sdp)
{
 dtrace_actdesc_t *ap = dt_stmt_action(dtp, sdp);

 dt_cg(yypcb, dnp->dn_expr);
 ap->dtad_difo = dt_as(yypcb);
 ap->dtad_difo->dtdo_rtype = dt_void_rtype;
 ap->dtad_kind = DTRACEACT_DIFEXPR;
}
