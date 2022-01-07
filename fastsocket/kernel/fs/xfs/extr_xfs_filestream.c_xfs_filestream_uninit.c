
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int item_zone ;
 int kmem_zone_destroy (int ) ;

void
xfs_filestream_uninit(void)
{
 kmem_zone_destroy(item_zone);
}
