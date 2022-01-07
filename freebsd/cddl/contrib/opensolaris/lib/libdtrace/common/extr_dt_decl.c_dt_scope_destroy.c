
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* ds_next; struct TYPE_5__* ds_ident; int ds_decl; } ;
typedef TYPE_1__ dt_scope_t ;
struct TYPE_6__ {TYPE_1__ pcb_dstack; } ;


 int dt_decl_free (int ) ;
 int free (TYPE_1__*) ;
 TYPE_2__* yypcb ;

void
dt_scope_destroy(dt_scope_t *dsp)
{
 dt_scope_t *nsp;

 for (; dsp != ((void*)0); dsp = nsp) {
  dt_decl_free(dsp->ds_decl);
  free(dsp->ds_ident);
  nsp = dsp->ds_next;
  if (dsp != &yypcb->pcb_dstack)
   free(dsp);
 }
}
