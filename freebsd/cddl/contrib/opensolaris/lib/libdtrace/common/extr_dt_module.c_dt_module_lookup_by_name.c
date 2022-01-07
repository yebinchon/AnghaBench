
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint_t ;
struct TYPE_5__ {size_t dt_modbuckets; TYPE_2__** dt_mods; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_6__ {int dm_name; struct TYPE_6__* dm_next; } ;
typedef TYPE_2__ dt_module_t ;


 size_t dt_strtab_hash (char const*,int *) ;
 scalar_t__ strcmp (int ,char const*) ;

dt_module_t *
dt_module_lookup_by_name(dtrace_hdl_t *dtp, const char *name)
{
 uint_t h = dt_strtab_hash(name, ((void*)0)) % dtp->dt_modbuckets;
 dt_module_t *dmp;

 for (dmp = dtp->dt_mods[h]; dmp != ((void*)0); dmp = dmp->dm_next) {
  if (strcmp(dmp->dm_name, name) == 0)
   return (dmp);
 }

 return (((void*)0));
}
