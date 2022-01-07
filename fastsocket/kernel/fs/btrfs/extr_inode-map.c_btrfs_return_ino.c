
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_root {scalar_t__ cached; scalar_t__ cache_progress; scalar_t__ highest_objectid; int fs_commit_mutex; int cache_lock; struct btrfs_free_space_ctl* free_ino_pinned; struct btrfs_free_space_ctl* free_ino_ctl; } ;
struct btrfs_free_space_ctl {int dummy; } ;


 scalar_t__ BTRFS_CACHE_FINISHED ;
 int INODE_MAP_CACHE ;
 int __btrfs_add_free_space (struct btrfs_free_space_ctl*,scalar_t__,int) ;
 int btrfs_test_opt (struct btrfs_root*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int start_caching (struct btrfs_root*) ;

void btrfs_return_ino(struct btrfs_root *root, u64 objectid)
{
 struct btrfs_free_space_ctl *ctl = root->free_ino_ctl;
 struct btrfs_free_space_ctl *pinned = root->free_ino_pinned;

 if (!btrfs_test_opt(root, INODE_MAP_CACHE))
  return;

again:
 if (root->cached == BTRFS_CACHE_FINISHED) {
  __btrfs_add_free_space(ctl, objectid, 1);
 } else {
  mutex_lock(&root->fs_commit_mutex);
  spin_lock(&root->cache_lock);
  if (root->cached == BTRFS_CACHE_FINISHED) {
   spin_unlock(&root->cache_lock);
   mutex_unlock(&root->fs_commit_mutex);
   goto again;
  }
  spin_unlock(&root->cache_lock);

  start_caching(root);

  if (objectid <= root->cache_progress ||
      objectid > root->highest_objectid)
   __btrfs_add_free_space(ctl, objectid, 1);
  else
   __btrfs_add_free_space(pinned, objectid, 1);

  mutex_unlock(&root->fs_commit_mutex);
 }
}
