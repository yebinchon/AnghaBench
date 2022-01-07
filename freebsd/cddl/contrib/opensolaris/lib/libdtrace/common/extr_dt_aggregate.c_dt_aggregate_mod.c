
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {scalar_t__ dm_text_va; scalar_t__ dm_text_size; } ;
struct TYPE_6__ {TYPE_2__ dt_modlist; int * dt_vector; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef TYPE_2__ dt_module_t ;


 TYPE_2__* dt_list_next (TYPE_2__*) ;

__attribute__((used)) static void
dt_aggregate_mod(dtrace_hdl_t *dtp, uint64_t *data)
{
 uint64_t *pc = data;
 dt_module_t *dmp;

 if (dtp->dt_vector != ((void*)0)) {
  return;
 }

 for (dmp = dt_list_next(&dtp->dt_modlist); dmp != ((void*)0);
     dmp = dt_list_next(dmp)) {
  if (*pc - dmp->dm_text_va < dmp->dm_text_size) {
   *pc = dmp->dm_text_va;
   return;
  }
 }
}
