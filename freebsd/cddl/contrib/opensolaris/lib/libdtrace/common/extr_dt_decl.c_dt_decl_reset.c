
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* ds_decl; } ;
typedef TYPE_1__ dt_scope_t ;
struct TYPE_6__ {struct TYPE_6__* dd_next; } ;
typedef TYPE_2__ dt_decl_t ;
struct TYPE_7__ {TYPE_1__ pcb_dstack; } ;


 int dt_decl_free (TYPE_2__*) ;
 TYPE_3__* yypcb ;

void
dt_decl_reset(void)
{
 dt_scope_t *dsp = &yypcb->pcb_dstack;
 dt_decl_t *ddp = dsp->ds_decl;

 while (ddp->dd_next != ((void*)0)) {
  dsp->ds_decl = ddp->dd_next;
  ddp->dd_next = ((void*)0);
  dt_decl_free(ddp);
  ddp = dsp->ds_decl;
 }
}
