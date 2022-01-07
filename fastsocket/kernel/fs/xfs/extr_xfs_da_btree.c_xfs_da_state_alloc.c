
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_da_state_t ;


 int KM_NOFS ;
 int * kmem_zone_zalloc (int ,int ) ;
 int xfs_da_state_zone ;

xfs_da_state_t *
xfs_da_state_alloc(void)
{
 return kmem_zone_zalloc(xfs_da_state_zone, KM_NOFS);
}
