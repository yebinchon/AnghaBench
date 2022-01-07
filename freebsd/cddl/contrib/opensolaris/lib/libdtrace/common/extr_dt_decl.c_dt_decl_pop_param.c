
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ds_class; char* ds_ident; } ;
typedef TYPE_1__ dt_scope_t ;
typedef int dt_decl_t ;
struct TYPE_4__ {TYPE_1__ pcb_dstack; } ;


 scalar_t__ DT_DC_DEFAULT ;
 scalar_t__ DT_DC_REGISTER ;
 int D_DECL_PARMCLASS ;
 int * dt_decl_pop () ;
 int * dt_decl_top () ;
 int xyerror (int ,char*) ;
 TYPE_2__* yypcb ;

dt_decl_t *
dt_decl_pop_param(char **idp)
{
 dt_scope_t *dsp = &yypcb->pcb_dstack;

 if (dsp->ds_class != DT_DC_DEFAULT && dsp->ds_class != DT_DC_REGISTER) {
  xyerror(D_DECL_PARMCLASS, "inappropriate storage class "
      "for function or associative array parameter\n");
 }

 if (idp != ((void*)0) && dt_decl_top() != ((void*)0)) {
  *idp = dsp->ds_ident;
  dsp->ds_ident = ((void*)0);
 }

 return (dt_decl_pop());
}
