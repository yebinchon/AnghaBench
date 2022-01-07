
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* ds_next; int ds_enumval; int ds_class; int ds_type; int * ds_ctfp; int ds_ident; int ds_decl; } ;
typedef TYPE_1__ dt_scope_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_6__ {int pcb_jmpbuf; TYPE_1__ pcb_dstack; } ;


 int EDT_NOMEM ;
 int dt_scope_create (TYPE_1__*) ;
 int longjmp (int ,int ) ;
 TYPE_1__* malloc (int) ;
 TYPE_2__* yypcb ;

void
dt_scope_push(ctf_file_t *ctfp, ctf_id_t type)
{
 dt_scope_t *rsp = &yypcb->pcb_dstack;
 dt_scope_t *dsp = malloc(sizeof (dt_scope_t));

 if (dsp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 dsp->ds_decl = rsp->ds_decl;
 dsp->ds_next = rsp->ds_next;
 dsp->ds_ident = rsp->ds_ident;
 dsp->ds_ctfp = ctfp;
 dsp->ds_type = type;
 dsp->ds_class = rsp->ds_class;
 dsp->ds_enumval = rsp->ds_enumval;

 dt_scope_create(rsp);
 rsp->ds_next = dsp;
}
