
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dd_kind; int * dd_name; } ;
typedef TYPE_2__ dt_decl_t ;
struct TYPE_6__ {TYPE_2__* ds_decl; } ;
struct TYPE_8__ {int pcb_jmpbuf; TYPE_1__ pcb_dstack; } ;


 scalar_t__ CTF_K_INTEGER ;
 scalar_t__ CTF_K_UNKNOWN ;
 int EDT_NODECL ;
 int dt_decl_check (TYPE_2__*) ;
 int longjmp (int ,int ) ;
 TYPE_3__* yypcb ;

dt_decl_t *
dt_decl_top(void)
{
 dt_decl_t *ddp = yypcb->pcb_dstack.ds_decl;

 if (ddp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NODECL);

 if (ddp->dd_kind == CTF_K_UNKNOWN && ddp->dd_name == ((void*)0)) {
  ddp->dd_kind = CTF_K_INTEGER;
  (void) dt_decl_check(ddp);
 }

 return (ddp);
}
