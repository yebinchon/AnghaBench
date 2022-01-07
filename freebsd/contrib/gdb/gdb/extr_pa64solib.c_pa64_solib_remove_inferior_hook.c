
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dld_flags; int dld_flags_addr; } ;


 int DT_HP_DEBUG_CALLBACK ;
 TYPE_1__ dld_cache ;
 int target_write_memory (int ,char*,int) ;

void
pa64_solib_remove_inferior_hook (int pid)
{

  dld_cache.dld_flags &= ~DT_HP_DEBUG_CALLBACK;
  target_write_memory (dld_cache.dld_flags_addr,
         (char *)&dld_cache.dld_flags,
         sizeof (dld_cache.dld_flags));
}
