
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dt_node_t ;
struct TYPE_2__ {int * pcb_root; } ;


 TYPE_1__* yypcb ;

int
dt_node_root(dt_node_t *dnp)
{
 yypcb->pcb_root = dnp;
 return (0);
}
