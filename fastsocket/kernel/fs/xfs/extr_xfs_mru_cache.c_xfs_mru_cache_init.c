
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_mru_cache_elem_t ;


 int ENOMEM ;
 int create_singlethread_workqueue (char*) ;
 int kmem_zone_destroy (int ) ;
 int kmem_zone_init (int,char*) ;
 int xfs_mru_elem_zone ;
 int xfs_mru_reap_wq ;

int
xfs_mru_cache_init(void)
{
 xfs_mru_elem_zone = kmem_zone_init(sizeof(xfs_mru_cache_elem_t),
                                  "xfs_mru_cache_elem");
 if (!xfs_mru_elem_zone)
  goto out;

 xfs_mru_reap_wq = create_singlethread_workqueue("xfs_mru_cache");
 if (!xfs_mru_reap_wq)
  goto out_destroy_mru_elem_zone;

 return 0;

 out_destroy_mru_elem_zone:
 kmem_zone_destroy(xfs_mru_elem_zone);
 out:
 return -ENOMEM;
}
