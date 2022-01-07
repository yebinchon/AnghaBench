
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* ds_decl; } ;
typedef TYPE_1__ dt_scope_t ;
struct TYPE_8__ {scalar_t__ dd_kind; struct TYPE_8__* dd_next; int * dd_name; } ;
typedef TYPE_2__ dt_decl_t ;
struct TYPE_9__ {TYPE_1__ pcb_dstack; } ;


 scalar_t__ CTF_K_INTEGER ;
 scalar_t__ CTF_K_UNKNOWN ;
 int assert (int ) ;
 int dt_decl_check (TYPE_2__*) ;
 TYPE_3__* yypcb ;

dt_decl_t *
dt_decl_push(dt_decl_t *ddp)
{
 dt_scope_t *dsp = &yypcb->pcb_dstack;
 dt_decl_t *top = dsp->ds_decl;

 if (top != ((void*)0) &&
     top->dd_kind == CTF_K_UNKNOWN && top->dd_name == ((void*)0)) {
  top->dd_kind = CTF_K_INTEGER;
  (void) dt_decl_check(top);
 }

 assert(ddp->dd_next == ((void*)0));
 ddp->dd_next = top;
 dsp->ds_decl = ddp;

 return (ddp);
}
