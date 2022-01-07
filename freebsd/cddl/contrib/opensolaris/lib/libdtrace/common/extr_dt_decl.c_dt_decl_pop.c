
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_enumval; int ds_class; int ds_type; int * ds_ctfp; int * ds_ident; int * ds_decl; } ;
typedef TYPE_1__ dt_scope_t ;
typedef int dt_decl_t ;
struct TYPE_4__ {TYPE_1__ pcb_dstack; } ;


 int CTF_ERR ;
 int DT_DC_DEFAULT ;
 int * dt_decl_top () ;
 int free (int *) ;
 TYPE_2__* yypcb ;

dt_decl_t *
dt_decl_pop(void)
{
 dt_scope_t *dsp = &yypcb->pcb_dstack;
 dt_decl_t *ddp = dt_decl_top();

 dsp->ds_decl = ((void*)0);
 free(dsp->ds_ident);
 dsp->ds_ident = ((void*)0);
 dsp->ds_ctfp = ((void*)0);
 dsp->ds_type = CTF_ERR;
 dsp->ds_class = DT_DC_DEFAULT;
 dsp->ds_enumval = -1;

 return (ddp);
}
