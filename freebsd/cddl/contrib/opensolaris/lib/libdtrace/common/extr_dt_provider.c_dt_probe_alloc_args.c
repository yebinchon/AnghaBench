
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* pv_nodes; int pv_hdl; } ;
typedef TYPE_1__ dt_provider_t ;
struct TYPE_7__ {struct TYPE_7__* dn_list; struct TYPE_7__* dn_link; } ;
typedef TYPE_2__ dt_node_t ;


 int DT_NODE_TYPE ;
 TYPE_2__* dt_node_xalloc (int ,int ) ;

__attribute__((used)) static dt_node_t *
dt_probe_alloc_args(dt_provider_t *pvp, int argc)
{
 dt_node_t *args = ((void*)0), *pnp = ((void*)0), *dnp;
 int i;

 for (i = 0; i < argc; i++, pnp = dnp) {
  if ((dnp = dt_node_xalloc(pvp->pv_hdl, DT_NODE_TYPE)) == ((void*)0))
   return (((void*)0));

  dnp->dn_link = pvp->pv_nodes;
  pvp->pv_nodes = dnp;

  if (args == ((void*)0))
   args = dnp;
  else
   pnp->dn_list = dnp;
 }

 return (args);
}
