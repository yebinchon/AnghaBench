
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* dn_list; } ;
typedef TYPE_1__ dt_node_t ;


 int dt_node_free (TYPE_1__*) ;

void
dt_node_list_free(dt_node_t **pnp)
{
 dt_node_t *dnp, *nnp;

 for (dnp = (pnp != ((void*)0) ? *pnp : ((void*)0)); dnp != ((void*)0); dnp = nnp) {
  nnp = dnp->dn_list;
  dt_node_free(dnp);
 }

 if (pnp != ((void*)0))
  *pnp = ((void*)0);
}
