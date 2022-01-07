
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_5__ {int * di_next; int * di_extern; int di_instr; int di_label; } ;
typedef TYPE_1__ dt_irnode_t ;
typedef int dif_instr_t ;
struct TYPE_6__ {int pcb_jmpbuf; } ;


 int EDT_NOMEM ;
 int longjmp (int ,int ) ;
 TYPE_1__* malloc (int) ;
 TYPE_2__* yypcb ;

__attribute__((used)) static dt_irnode_t *
dt_cg_node_alloc(uint_t label, dif_instr_t instr)
{
 dt_irnode_t *dip = malloc(sizeof (dt_irnode_t));

 if (dip == ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, EDT_NOMEM);

 dip->di_label = label;
 dip->di_instr = instr;
 dip->di_extern = ((void*)0);
 dip->di_next = ((void*)0);

 return (dip);
}
