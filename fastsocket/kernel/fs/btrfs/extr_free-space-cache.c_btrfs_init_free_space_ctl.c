
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_free_space_ctl {int extents_thresh; int * op; struct btrfs_block_group_cache* private; int start; int unit; int tree_lock; } ;
struct btrfs_free_space {int dummy; } ;
struct TYPE_2__ {int objectid; } ;
struct btrfs_block_group_cache {TYPE_1__ key; int sectorsize; struct btrfs_free_space_ctl* free_space_ctl; } ;


 int free_space_op ;
 int spin_lock_init (int *) ;

void btrfs_init_free_space_ctl(struct btrfs_block_group_cache *block_group)
{
 struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;

 spin_lock_init(&ctl->tree_lock);
 ctl->unit = block_group->sectorsize;
 ctl->start = block_group->key.objectid;
 ctl->private = block_group;
 ctl->op = &free_space_op;






 ctl->extents_thresh = ((1024 * 32) / 2) /
    sizeof(struct btrfs_free_space);
}
