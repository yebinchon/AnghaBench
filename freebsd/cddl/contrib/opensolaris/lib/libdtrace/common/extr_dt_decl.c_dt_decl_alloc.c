
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ushort_t ;
struct TYPE_5__ {char* dd_name; int * dd_next; int * dd_node; int dd_type; int * dd_ctfp; scalar_t__ dd_attr; int dd_kind; } ;
typedef TYPE_1__ dt_decl_t ;
struct TYPE_6__ {int pcb_jmpbuf; } ;


 int CTF_ERR ;
 int EDT_NOMEM ;
 int longjmp (int ,int ) ;
 TYPE_1__* malloc (int) ;
 TYPE_2__* yypcb ;

dt_decl_t *
dt_decl_alloc(ushort_t kind, char *name)
{
 dt_decl_t *ddp = malloc(sizeof (dt_decl_t));

 if (ddp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 ddp->dd_kind = kind;
 ddp->dd_attr = 0;
 ddp->dd_ctfp = ((void*)0);
 ddp->dd_type = CTF_ERR;
 ddp->dd_name = name;
 ddp->dd_node = ((void*)0);
 ddp->dd_next = ((void*)0);

 return (ddp);
}
