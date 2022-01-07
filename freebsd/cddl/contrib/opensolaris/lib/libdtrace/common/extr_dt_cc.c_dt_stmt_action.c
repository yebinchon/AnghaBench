
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_stmtdesc_t ;
typedef int dtrace_hdl_t ;
typedef int dtrace_actdesc_t ;
struct TYPE_2__ {int pcb_jmpbuf; } ;


 int EDT_NOMEM ;
 int * dtrace_stmt_action (int *,int *) ;
 int longjmp (int ,int ) ;
 TYPE_1__* yypcb ;

__attribute__((used)) static dtrace_actdesc_t *
dt_stmt_action(dtrace_hdl_t *dtp, dtrace_stmtdesc_t *sdp)
{
 dtrace_actdesc_t *new;

 if ((new = dtrace_stmt_action(dtp, sdp)) == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 return (new);
}
