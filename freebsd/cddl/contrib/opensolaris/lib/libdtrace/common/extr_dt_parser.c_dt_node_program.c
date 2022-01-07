
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* dn_list; } ;
typedef TYPE_1__ dt_node_t ;


 int DT_NODE_PROG ;
 TYPE_1__* dt_node_alloc (int ) ;

dt_node_t *
dt_node_program(dt_node_t *lnp)
{
 dt_node_t *dnp = dt_node_alloc(DT_NODE_PROG);
 dnp->dn_list = lnp;
 return (dnp);
}
