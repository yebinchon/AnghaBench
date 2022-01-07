
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_9__ {size_t dt_modbuckets; scalar_t__ dt_nmods; int dt_modlist; TYPE_2__** dt_mods; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_10__ {struct TYPE_10__* dm_next; int dm_name; } ;
typedef TYPE_2__ dt_module_t ;


 int assert (int) ;
 int dt_list_delete (int *,TYPE_2__*) ;
 int dt_module_unload (TYPE_1__*,TYPE_2__*) ;
 size_t dt_strtab_hash (int ,int *) ;
 int free (TYPE_2__*) ;

void
dt_module_destroy(dtrace_hdl_t *dtp, dt_module_t *dmp)
{
 uint_t h = dt_strtab_hash(dmp->dm_name, ((void*)0)) % dtp->dt_modbuckets;
 dt_module_t **dmpp = &dtp->dt_mods[h];

 dt_list_delete(&dtp->dt_modlist, dmp);
 assert(dtp->dt_nmods != 0);
 dtp->dt_nmods--;






 while (*dmpp != dmp) {
  dmpp = &((*dmpp)->dm_next);
  assert(*dmpp != ((void*)0));
 }

 *dmpp = dmp->dm_next;

 dt_module_unload(dtp, dmp);
 free(dmp);
}
