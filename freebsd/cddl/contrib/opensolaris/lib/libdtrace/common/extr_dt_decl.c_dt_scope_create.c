
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ds_enumval; int ds_class; int ds_type; int * ds_ctfp; int * ds_ident; int * ds_next; int * ds_decl; } ;
typedef TYPE_1__ dt_scope_t ;


 int CTF_ERR ;
 int DT_DC_DEFAULT ;

void
dt_scope_create(dt_scope_t *dsp)
{
 dsp->ds_decl = ((void*)0);
 dsp->ds_next = ((void*)0);
 dsp->ds_ident = ((void*)0);
 dsp->ds_ctfp = ((void*)0);
 dsp->ds_type = CTF_ERR;
 dsp->ds_class = DT_DC_DEFAULT;
 dsp->ds_enumval = -1;
}
