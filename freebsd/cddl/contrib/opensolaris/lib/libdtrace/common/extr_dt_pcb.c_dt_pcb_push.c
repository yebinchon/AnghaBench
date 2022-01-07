
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dt_gen; TYPE_2__* dt_pcb; int dt_globals; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_9__ {struct TYPE_9__* pcb_prev; TYPE_1__* pcb_hdl; int pcb_ir; int pcb_globals; int pcb_dstack; } ;
typedef TYPE_2__ dt_pcb_t ;
struct TYPE_10__ {scalar_t__ pcb_yystate; TYPE_1__* pcb_hdl; } ;


 scalar_t__ YYS_DONE ;
 int assert (int) ;
 int bzero (TYPE_2__*,int) ;
 int dt_idstack_push (int *,int ) ;
 int dt_irlist_create (int *) ;
 int dt_scope_create (int *) ;
 int yyinit (TYPE_2__*) ;
 TYPE_3__* yypcb ;

void
dt_pcb_push(dtrace_hdl_t *dtp, dt_pcb_t *pcb)
{
 if (yypcb != ((void*)0)) {
  assert(yypcb->pcb_hdl == dtp);
  assert(yypcb->pcb_yystate == YYS_DONE);
 }

 bzero(pcb, sizeof (dt_pcb_t));

 dt_scope_create(&pcb->pcb_dstack);
 dt_idstack_push(&pcb->pcb_globals, dtp->dt_globals);
 dt_irlist_create(&pcb->pcb_ir);

 pcb->pcb_hdl = dtp;
 pcb->pcb_prev = dtp->dt_pcb;

 dtp->dt_pcb = pcb;
 dtp->dt_gen++;

 yyinit(pcb);
}
