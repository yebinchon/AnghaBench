
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_10__ {size_t dt_provbuckets; int dt_nprovs; int dt_provlist; TYPE_3__** dt_provs; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_9__ {int dtvd_name; } ;
struct TYPE_11__ {struct TYPE_11__* pv_xrefs; int pv_nodes; int * pv_probes; struct TYPE_11__* pv_next; TYPE_1__ pv_desc; TYPE_2__* pv_hdl; } ;
typedef TYPE_3__ dt_provider_t ;


 int assert (int) ;
 int dt_free (TYPE_2__*,TYPE_3__*) ;
 int dt_idhash_destroy (int *) ;
 int dt_list_delete (int *,TYPE_3__*) ;
 int dt_node_link_free (int *) ;
 size_t dt_strtab_hash (int ,int *) ;

void
dt_provider_destroy(dtrace_hdl_t *dtp, dt_provider_t *pvp)
{
 dt_provider_t **pp;
 uint_t h;

 assert(pvp->pv_hdl == dtp);

 h = dt_strtab_hash(pvp->pv_desc.dtvd_name, ((void*)0)) % dtp->dt_provbuckets;
 pp = &dtp->dt_provs[h];

 while (*pp != ((void*)0) && *pp != pvp)
  pp = &(*pp)->pv_next;

 assert(*pp != ((void*)0) && *pp == pvp);
 *pp = pvp->pv_next;

 dt_list_delete(&dtp->dt_provlist, pvp);
 dtp->dt_nprovs--;

 if (pvp->pv_probes != ((void*)0))
  dt_idhash_destroy(pvp->pv_probes);

 dt_node_link_free(&pvp->pv_nodes);
 dt_free(dtp, pvp->pv_xrefs);
 dt_free(dtp, pvp);
}
