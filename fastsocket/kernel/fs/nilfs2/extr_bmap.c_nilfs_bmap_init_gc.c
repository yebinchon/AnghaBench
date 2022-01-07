
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_bmap {scalar_t__ b_state; int b_last_allocated_ptr; scalar_t__ b_last_allocated_key; int b_ptr_type; int * b_inode; int b_sem; int b_u; } ;
struct TYPE_2__ {int vfs_inode; } ;


 TYPE_1__* NILFS_BMAP_I (struct nilfs_bmap*) ;
 int NILFS_BMAP_INVALID_PTR ;
 int NILFS_BMAP_PTR_U ;
 int NILFS_BMAP_SIZE ;
 int init_rwsem (int *) ;
 int memset (int *,int ,int ) ;
 int nilfs_btree_init_gc (struct nilfs_bmap*) ;

void nilfs_bmap_init_gc(struct nilfs_bmap *bmap)
{
 memset(&bmap->b_u, 0, NILFS_BMAP_SIZE);
 init_rwsem(&bmap->b_sem);
 bmap->b_inode = &NILFS_BMAP_I(bmap)->vfs_inode;
 bmap->b_ptr_type = NILFS_BMAP_PTR_U;
 bmap->b_last_allocated_key = 0;
 bmap->b_last_allocated_ptr = NILFS_BMAP_INVALID_PTR;
 bmap->b_state = 0;
 nilfs_btree_init_gc(bmap);
}
