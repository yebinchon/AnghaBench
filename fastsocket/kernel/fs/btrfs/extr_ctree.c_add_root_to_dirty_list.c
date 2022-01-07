
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_root {TYPE_1__* fs_info; int dirty_list; scalar_t__ track_dirty; } ;
struct TYPE_2__ {int trans_lock; int dirty_cowonly_roots; } ;


 int list_add (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void add_root_to_dirty_list(struct btrfs_root *root)
{
 spin_lock(&root->fs_info->trans_lock);
 if (root->track_dirty && list_empty(&root->dirty_list)) {
  list_add(&root->dirty_list,
    &root->fs_info->dirty_cowonly_roots);
 }
 spin_unlock(&root->fs_info->trans_lock);
}
