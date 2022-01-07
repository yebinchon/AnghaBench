
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int cache_progress; int highest_objectid; int fs_commit_mutex; int cache_wait; int cache_lock; int cached; struct btrfs_free_space_ctl* free_ino_ctl; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int skip_locking; int search_commit_root; int reada; int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {int objectid; scalar_t__ type; scalar_t__ offset; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_free_space_ctl {int dummy; } ;


 int BTRFS_CACHE_FINISHED ;
 int BTRFS_FIRST_FREE_OBJECTID ;
 scalar_t__ BTRFS_INODE_ITEM_KEY ;
 int ENOMEM ;
 int INODE_MAP_CACHE ;
 int WARN_ON (int) ;
 int __btrfs_add_free_space (struct btrfs_free_space_ctl*,int,int) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 scalar_t__ btrfs_fs_closing (struct btrfs_fs_info*) ;
 int btrfs_header_nritems (struct extent_buffer*) ;
 int btrfs_item_key_to_cpu (struct extent_buffer*,struct btrfs_key*,int) ;
 int btrfs_next_leaf (struct btrfs_root*,struct btrfs_path*) ;
 int btrfs_release_path (struct btrfs_path*) ;
 int btrfs_search_slot (int *,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int ,int ) ;
 int btrfs_test_opt (struct btrfs_root*,int ) ;
 scalar_t__ btrfs_transaction_in_commit (struct btrfs_fs_info*) ;
 int btrfs_unpin_free_ino (struct btrfs_root*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ need_resched () ;
 int schedule_timeout (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wake_up (int *) ;

__attribute__((used)) static int caching_kthread(void *data)
{
 struct btrfs_root *root = data;
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_free_space_ctl *ctl = root->free_ino_ctl;
 struct btrfs_key key;
 struct btrfs_path *path;
 struct extent_buffer *leaf;
 u64 last = (u64)-1;
 int slot;
 int ret;

 if (!btrfs_test_opt(root, INODE_MAP_CACHE))
  return 0;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;


 path->skip_locking = 1;
 path->search_commit_root = 1;
 path->reada = 2;

 key.objectid = BTRFS_FIRST_FREE_OBJECTID;
 key.offset = 0;
 key.type = BTRFS_INODE_ITEM_KEY;
again:

 mutex_lock(&root->fs_commit_mutex);

 ret = btrfs_search_slot(((void*)0), root, &key, path, 0, 0);
 if (ret < 0)
  goto out;

 while (1) {
  if (btrfs_fs_closing(fs_info))
   goto out;

  leaf = path->nodes[0];
  slot = path->slots[0];
  if (slot >= btrfs_header_nritems(leaf)) {
   ret = btrfs_next_leaf(root, path);
   if (ret < 0)
    goto out;
   else if (ret > 0)
    break;

   if (need_resched() ||
       btrfs_transaction_in_commit(fs_info)) {
    leaf = path->nodes[0];

    if (btrfs_header_nritems(leaf) == 0) {
     WARN_ON(1);
     break;
    }





    btrfs_item_key_to_cpu(leaf, &key, 0);
    btrfs_release_path(path);
    root->cache_progress = last;
    mutex_unlock(&root->fs_commit_mutex);
    schedule_timeout(1);
    goto again;
   } else
    continue;
  }

  btrfs_item_key_to_cpu(leaf, &key, slot);

  if (key.type != BTRFS_INODE_ITEM_KEY)
   goto next;

  if (key.objectid >= root->highest_objectid)
   break;

  if (last != (u64)-1 && last + 1 != key.objectid) {
   __btrfs_add_free_space(ctl, last + 1,
            key.objectid - last - 1);
   wake_up(&root->cache_wait);
  }

  last = key.objectid;
next:
  path->slots[0]++;
 }

 if (last < root->highest_objectid - 1) {
  __btrfs_add_free_space(ctl, last + 1,
           root->highest_objectid - last - 1);
 }

 spin_lock(&root->cache_lock);
 root->cached = BTRFS_CACHE_FINISHED;
 spin_unlock(&root->cache_lock);

 root->cache_progress = (u64)-1;
 btrfs_unpin_free_ino(root);
out:
 wake_up(&root->cache_wait);
 mutex_unlock(&root->fs_commit_mutex);

 btrfs_free_path(path);

 return ret;
}
