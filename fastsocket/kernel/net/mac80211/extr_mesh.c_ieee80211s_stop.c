
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int ) ;
 int mesh_allocated ;
 int mesh_pathtbl_unregister () ;
 int rm_cache ;

void ieee80211s_stop(void)
{
 if (!mesh_allocated)
  return;
 mesh_pathtbl_unregister();
 kmem_cache_destroy(rm_cache);
}
