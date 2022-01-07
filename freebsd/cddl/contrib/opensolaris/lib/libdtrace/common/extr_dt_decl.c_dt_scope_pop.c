
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ds_decl; int ds_enumval; int ds_class; int ds_type; int * ds_ctfp; struct TYPE_4__* ds_ident; struct TYPE_4__* ds_next; } ;
typedef TYPE_1__ dt_scope_t ;
typedef int dt_decl_t ;
struct TYPE_5__ {int pcb_jmpbuf; TYPE_1__ pcb_dstack; } ;


 scalar_t__ CTF_ERR ;
 int D_UNKNOWN ;
 int EDT_NOSCOPE ;
 int ctf_errmsg (int ) ;
 int ctf_errno (int *) ;
 scalar_t__ ctf_update (int *) ;
 int dt_decl_free (int *) ;
 int free (TYPE_1__*) ;
 int longjmp (int ,int ) ;
 int xyerror (int ,char*,int ) ;
 TYPE_2__* yypcb ;

dt_decl_t *
dt_scope_pop(void)
{
 dt_scope_t *rsp = &yypcb->pcb_dstack;
 dt_scope_t *dsp = rsp->ds_next;

 if (dsp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOSCOPE);

 if (dsp->ds_ctfp != ((void*)0) && ctf_update(dsp->ds_ctfp) == CTF_ERR) {
  xyerror(D_UNKNOWN, "failed to update type definitions: %s\n",
      ctf_errmsg(ctf_errno(dsp->ds_ctfp)));
 }

 dt_decl_free(rsp->ds_decl);
 free(rsp->ds_ident);

 rsp->ds_decl = dsp->ds_decl;
 rsp->ds_next = dsp->ds_next;
 rsp->ds_ident = dsp->ds_ident;
 rsp->ds_ctfp = dsp->ds_ctfp;
 rsp->ds_type = dsp->ds_type;
 rsp->ds_class = dsp->ds_class;
 rsp->ds_enumval = dsp->ds_enumval;

 free(dsp);
 return (rsp->ds_decl);
}
