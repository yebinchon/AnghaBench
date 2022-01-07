
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_fs_info {int mount_opt; int caching_workers; int extent_commit_sem; int caching_block_groups; int extent_root; } ;
struct TYPE_4__ {int func; } ;
struct btrfs_caching_control {TYPE_2__ work; int list; int count; int wait; int progress; struct btrfs_block_group_cache* block_group; int mutex; } ;
struct TYPE_3__ {int objectid; } ;
struct btrfs_block_group_cache {scalar_t__ cached; int lock; struct btrfs_caching_control* caching_ctl; scalar_t__ last_byte_to_unpin; TYPE_1__ key; struct btrfs_fs_info* fs_info; } ;


 scalar_t__ BTRFS_CACHE_FAST ;
 scalar_t__ BTRFS_CACHE_FINISHED ;
 scalar_t__ BTRFS_CACHE_NO ;
 void* BTRFS_CACHE_STARTED ;
 int BTRFS_MOUNT_SPACE_CACHE ;
 int DEFINE_WAIT (int ) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int TASK_UNINTERRUPTIBLE ;
 int WARN_ON (struct btrfs_caching_control*) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int) ;
 int btrfs_get_block_group (struct btrfs_block_group_cache*) ;
 int btrfs_queue_worker (int *,TYPE_2__*) ;
 int caching_thread ;
 int down_write (int *) ;
 int finish_wait (int *,int *) ;
 int free_excluded_extents (int ,struct btrfs_block_group_cache*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct btrfs_caching_control*) ;
 struct btrfs_caching_control* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int load_free_space_cache (struct btrfs_fs_info*,struct btrfs_block_group_cache*) ;
 int mutex_init (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int put_caching_control (struct btrfs_caching_control*) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;
 int wait ;
 int wake_up (int *) ;

__attribute__((used)) static int cache_block_group(struct btrfs_block_group_cache *cache,
        struct btrfs_trans_handle *trans,
        struct btrfs_root *root,
        int load_cache_only)
{
 DEFINE_WAIT(wait);
 struct btrfs_fs_info *fs_info = cache->fs_info;
 struct btrfs_caching_control *caching_ctl;
 int ret = 0;

 caching_ctl = kzalloc(sizeof(*caching_ctl), GFP_NOFS);
 if (!caching_ctl)
  return -ENOMEM;

 INIT_LIST_HEAD(&caching_ctl->list);
 mutex_init(&caching_ctl->mutex);
 init_waitqueue_head(&caching_ctl->wait);
 caching_ctl->block_group = cache;
 caching_ctl->progress = cache->key.objectid;
 atomic_set(&caching_ctl->count, 1);
 caching_ctl->work.func = caching_thread;

 spin_lock(&cache->lock);
 while (cache->cached == BTRFS_CACHE_FAST) {
  struct btrfs_caching_control *ctl;

  ctl = cache->caching_ctl;
  atomic_inc(&ctl->count);
  prepare_to_wait(&ctl->wait, &wait, TASK_UNINTERRUPTIBLE);
  spin_unlock(&cache->lock);

  schedule();

  finish_wait(&ctl->wait, &wait);
  put_caching_control(ctl);
  spin_lock(&cache->lock);
 }

 if (cache->cached != BTRFS_CACHE_NO) {
  spin_unlock(&cache->lock);
  kfree(caching_ctl);
  return 0;
 }
 WARN_ON(cache->caching_ctl);
 cache->caching_ctl = caching_ctl;
 cache->cached = BTRFS_CACHE_FAST;
 spin_unlock(&cache->lock);







 if (fs_info->mount_opt & BTRFS_MOUNT_SPACE_CACHE) {
  ret = load_free_space_cache(fs_info, cache);

  spin_lock(&cache->lock);
  if (ret == 1) {
   cache->caching_ctl = ((void*)0);
   cache->cached = BTRFS_CACHE_FINISHED;
   cache->last_byte_to_unpin = (u64)-1;
  } else {
   if (load_cache_only) {
    cache->caching_ctl = ((void*)0);
    cache->cached = BTRFS_CACHE_NO;
   } else {
    cache->cached = BTRFS_CACHE_STARTED;
   }
  }
  spin_unlock(&cache->lock);
  wake_up(&caching_ctl->wait);
  if (ret == 1) {
   put_caching_control(caching_ctl);
   free_excluded_extents(fs_info->extent_root, cache);
   return 0;
  }
 } else {




  spin_lock(&cache->lock);
  if (load_cache_only) {
   cache->caching_ctl = ((void*)0);
   cache->cached = BTRFS_CACHE_NO;
  } else {
   cache->cached = BTRFS_CACHE_STARTED;
  }
  spin_unlock(&cache->lock);
  wake_up(&caching_ctl->wait);
 }

 if (load_cache_only) {
  put_caching_control(caching_ctl);
  return 0;
 }

 down_write(&fs_info->extent_commit_sem);
 atomic_inc(&caching_ctl->count);
 list_add_tail(&caching_ctl->list, &fs_info->caching_block_groups);
 up_write(&fs_info->extent_commit_sem);

 btrfs_get_block_group(cache);

 btrfs_queue_worker(&fs_info->caching_workers, &caching_ctl->work);

 return ret;
}
