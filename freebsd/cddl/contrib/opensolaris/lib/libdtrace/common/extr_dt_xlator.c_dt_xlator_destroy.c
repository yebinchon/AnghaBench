
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_10__ {int dt_xlators; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_11__ {size_t dx_nmembers; struct TYPE_11__* dx_membdif; int * dx_ident; int * dx_locals; int dx_nodes; } ;
typedef TYPE_2__ dt_xlator_t ;


 int dt_difo_free (TYPE_1__*,TYPE_2__) ;
 int dt_free (TYPE_1__*,TYPE_2__*) ;
 int dt_ident_destroy (int *) ;
 int dt_idhash_destroy (int *) ;
 int dt_list_delete (int *,TYPE_2__*) ;
 int dt_node_link_free (int *) ;

void
dt_xlator_destroy(dtrace_hdl_t *dtp, dt_xlator_t *dxp)
{
 uint_t i;

 dt_node_link_free(&dxp->dx_nodes);

 if (dxp->dx_locals != ((void*)0))
  dt_idhash_destroy(dxp->dx_locals);
 else if (dxp->dx_ident != ((void*)0))
  dt_ident_destroy(dxp->dx_ident);

 for (i = 0; i < dxp->dx_nmembers; i++)
  dt_difo_free(dtp, dxp->dx_membdif[i]);

 dt_free(dtp, dxp->dx_membdif);
 dt_list_delete(&dtp->dt_xlators, dxp);
 dt_free(dtp, dxp);
}
