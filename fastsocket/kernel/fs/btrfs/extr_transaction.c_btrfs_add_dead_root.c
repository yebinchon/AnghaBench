
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_root {TYPE_1__* fs_info; int root_list; } ;
struct TYPE_2__ {int trans_lock; int dead_roots; } ;


 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_add_dead_root(struct btrfs_root *root)
{
 spin_lock(&root->fs_info->trans_lock);
 list_add(&root->root_list, &root->fs_info->dead_roots);
 spin_unlock(&root->fs_info->trans_lock);
 return 0;
}
