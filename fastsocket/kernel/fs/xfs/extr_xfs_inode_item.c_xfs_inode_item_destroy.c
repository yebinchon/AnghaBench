
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* i_itemp; } ;
typedef TYPE_1__ xfs_inode_t ;
struct TYPE_5__ {scalar_t__ ili_root_size; int ili_orig_root; } ;


 int kmem_free (int ) ;
 int kmem_zone_free (int ,TYPE_3__*) ;
 int xfs_ili_zone ;

void
xfs_inode_item_destroy(
 xfs_inode_t *ip)
{





 kmem_zone_free(xfs_ili_zone, ip->i_itemp);
}
