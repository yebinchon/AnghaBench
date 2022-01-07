
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* dn_link; } ;
typedef TYPE_1__ dt_node_t ;


 int dt_node_free (TYPE_1__*) ;
 int free (TYPE_1__*) ;

void
dt_node_link_free(dt_node_t **pnp)
{
 dt_node_t *dnp, *nnp;

 for (dnp = (pnp != ((void*)0) ? *pnp : ((void*)0)); dnp != ((void*)0); dnp = nnp) {
  nnp = dnp->dn_link;
  dt_node_free(dnp);
 }

 for (dnp = (pnp != ((void*)0) ? *pnp : ((void*)0)); dnp != ((void*)0); dnp = nnp) {
  nnp = dnp->dn_link;
  free(dnp);
 }

 if (pnp != ((void*)0))
  *pnp = ((void*)0);
}
