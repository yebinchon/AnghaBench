
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union nilfs_bmap_union {int dummy; } nilfs_bmap_union ;
struct nilfs_bmap {int * b_inode; int b_sem; } ;
struct TYPE_2__ {int vfs_inode; } ;


 TYPE_1__* NILFS_BMAP_I (struct nilfs_bmap*) ;
 int init_rwsem (int *) ;
 int lockdep_set_class (int *,int *) ;
 int memcpy (struct nilfs_bmap*,struct nilfs_bmap*,int) ;
 int nilfs_bmap_dat_lock_key ;

void nilfs_bmap_init_gcdat(struct nilfs_bmap *gcbmap, struct nilfs_bmap *bmap)
{
 memcpy(gcbmap, bmap, sizeof(union nilfs_bmap_union));
 init_rwsem(&gcbmap->b_sem);
 lockdep_set_class(&bmap->b_sem, &nilfs_bmap_dat_lock_key);
 gcbmap->b_inode = &NILFS_BMAP_I(gcbmap)->vfs_inode;
}
