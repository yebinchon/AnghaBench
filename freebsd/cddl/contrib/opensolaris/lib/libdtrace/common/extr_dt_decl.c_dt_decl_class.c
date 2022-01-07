
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ds_class; } ;
typedef TYPE_1__ dt_scope_t ;
typedef scalar_t__ dt_dclass_t ;
struct TYPE_4__ {TYPE_1__ pcb_dstack; } ;


 scalar_t__ DT_DC_DEFAULT ;
 int D_DECL_CLASS ;
 int xyerror (int ,char*) ;
 TYPE_2__* yypcb ;

void
dt_decl_class(dt_dclass_t class)
{
 dt_scope_t *dsp = &yypcb->pcb_dstack;

 if (dsp->ds_class != DT_DC_DEFAULT) {
  xyerror(D_DECL_CLASS, "only one storage class allowed "
      "in a declaration\n");
 }

 dsp->ds_class = class;
}
