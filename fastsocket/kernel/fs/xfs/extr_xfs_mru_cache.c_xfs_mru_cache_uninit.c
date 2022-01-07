
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_workqueue (int ) ;
 int kmem_zone_destroy (int ) ;
 int xfs_mru_elem_zone ;
 int xfs_mru_reap_wq ;

void
xfs_mru_cache_uninit(void)
{
 destroy_workqueue(xfs_mru_reap_wq);
 kmem_zone_destroy(xfs_mru_elem_zone);
}
