
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* dn_link; int dn_line; } ;
typedef TYPE_1__ dt_node_t ;
struct TYPE_6__ {TYPE_1__* pcb_list; int pcb_jmpbuf; int pcb_hdl; } ;


 int EDT_NOMEM ;
 TYPE_1__* dt_node_xalloc (int ,int) ;
 int longjmp (int ,int ) ;
 int yylineno ;
 TYPE_2__* yypcb ;

__attribute__((used)) static dt_node_t *
dt_node_alloc(int kind)
{
 dt_node_t *dnp = dt_node_xalloc(yypcb->pcb_hdl, kind);

 if (dnp == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 dnp->dn_line = yylineno;
 dnp->dn_link = yypcb->pcb_list;
 yypcb->pcb_list = dnp;

 return (dnp);
}
