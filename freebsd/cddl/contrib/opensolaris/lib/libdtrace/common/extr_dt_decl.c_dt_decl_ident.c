
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ds_ident; int * ds_decl; } ;
typedef TYPE_1__ dt_scope_t ;
typedef int dt_decl_t ;
struct TYPE_4__ {TYPE_1__ pcb_dstack; } ;


 int CTF_K_UNKNOWN ;
 int D_DECL_IDENT ;
 int dt_decl_alloc (int ,int *) ;
 int * dt_decl_push (int ) ;
 int free (char*) ;
 int xyerror (int ,char*) ;
 TYPE_2__* yypcb ;

dt_decl_t *
dt_decl_ident(char *name)
{
 dt_scope_t *dsp = &yypcb->pcb_dstack;
 dt_decl_t *ddp = dsp->ds_decl;

 if (dsp->ds_ident != ((void*)0)) {
  free(name);
  xyerror(D_DECL_IDENT, "old-style declaration or "
      "incorrect type specified\n");
 }

 dsp->ds_ident = name;

 if (ddp == ((void*)0))
  ddp = dt_decl_push(dt_decl_alloc(CTF_K_UNKNOWN, ((void*)0)));

 return (ddp);
}
