
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* dn_alternate_body; struct TYPE_7__* dn_body; struct TYPE_7__* dn_conditional; } ;
typedef TYPE_1__ dt_node_t ;


 int DT_NODE_IF ;
 TYPE_1__* dt_node_alloc (int ) ;

dt_node_t *
dt_node_if(dt_node_t *pred, dt_node_t *acts, dt_node_t *else_acts)
{
 dt_node_t *dnp = dt_node_alloc(DT_NODE_IF);
 dnp->dn_conditional = pred;
 dnp->dn_body = acts;
 dnp->dn_alternate_body = else_acts;

 return (dnp);
}
