
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* dtsd_stmtattr; void* dtsd_descattr; } ;
typedef TYPE_1__ dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
typedef int dtrace_ecbdesc_t ;
typedef void* dtrace_attribute_t ;
struct TYPE_6__ {TYPE_1__* pcb_stmt; int pcb_jmpbuf; } ;


 int EDT_NOMEM ;
 int assert (int ) ;
 TYPE_1__* dtrace_stmt_create (int *,int *) ;
 int longjmp (int ,int ) ;
 TYPE_2__* yypcb ;

__attribute__((used)) static dtrace_stmtdesc_t *
dt_stmt_create(dtrace_hdl_t *dtp, dtrace_ecbdesc_t *edp,
    dtrace_attribute_t descattr, dtrace_attribute_t stmtattr)
{
 dtrace_stmtdesc_t *sdp = dtrace_stmt_create(dtp, edp);

 if (sdp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 assert(yypcb->pcb_stmt == ((void*)0));
 yypcb->pcb_stmt = sdp;

 sdp->dtsd_descattr = descattr;
 sdp->dtsd_stmtattr = stmtattr;

 return (sdp);
}
