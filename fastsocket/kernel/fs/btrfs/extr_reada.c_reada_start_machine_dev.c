
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct reada_extent {int logical; int blocksize; int nzones; int lock; struct btrfs_device* scheduled_for; TYPE_2__** zones; int refcnt; } ;
struct extent_buffer {int start; } ;
struct btrfs_fs_info {int extent_root; int reada_lock; } ;
struct btrfs_device {int reada_next; int reada_in_flight; int reada_extents; TYPE_1__* reada_curr_zone; } ;
struct TYPE_4__ {struct btrfs_device* device; } ;
struct TYPE_3__ {int end; } ;


 int PAGE_CACHE_SHIFT ;
 int __readahead_hook (int ,struct extent_buffer*,int,int) ;
 int atomic_inc (int *) ;
 int free_extent_buffer (struct extent_buffer*) ;
 int kref_get (int *) ;
 int radix_tree_gang_lookup (int *,void**,int,int) ;
 int reada_extent_put (struct btrfs_fs_info*,struct reada_extent*) ;
 int reada_pick_zone (struct btrfs_device*) ;
 int reada_tree_block_flagged (int ,int,int,int,struct extent_buffer**) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int reada_start_machine_dev(struct btrfs_fs_info *fs_info,
       struct btrfs_device *dev)
{
 struct reada_extent *re = ((void*)0);
 int mirror_num = 0;
 struct extent_buffer *eb = ((void*)0);
 u64 logical;
 u32 blocksize;
 int ret;
 int i;
 int need_kick = 0;

 spin_lock(&fs_info->reada_lock);
 if (dev->reada_curr_zone == ((void*)0)) {
  ret = reada_pick_zone(dev);
  if (!ret) {
   spin_unlock(&fs_info->reada_lock);
   return 0;
  }
 }





 ret = radix_tree_gang_lookup(&dev->reada_extents, (void **)&re,
         dev->reada_next >> PAGE_CACHE_SHIFT, 1);
 if (ret == 0 || re->logical >= dev->reada_curr_zone->end) {
  ret = reada_pick_zone(dev);
  if (!ret) {
   spin_unlock(&fs_info->reada_lock);
   return 0;
  }
  re = ((void*)0);
  ret = radix_tree_gang_lookup(&dev->reada_extents, (void **)&re,
     dev->reada_next >> PAGE_CACHE_SHIFT, 1);
 }
 if (ret == 0) {
  spin_unlock(&fs_info->reada_lock);
  return 0;
 }
 dev->reada_next = re->logical + re->blocksize;
 kref_get(&re->refcnt);

 spin_unlock(&fs_info->reada_lock);




 for (i = 0; i < re->nzones; ++i) {
  if (re->zones[i]->device == dev) {
   mirror_num = i + 1;
   break;
  }
 }
 logical = re->logical;
 blocksize = re->blocksize;

 spin_lock(&re->lock);
 if (re->scheduled_for == ((void*)0)) {
  re->scheduled_for = dev;
  need_kick = 1;
 }
 spin_unlock(&re->lock);

 reada_extent_put(fs_info, re);

 if (!need_kick)
  return 0;

 atomic_inc(&dev->reada_in_flight);
 ret = reada_tree_block_flagged(fs_info->extent_root, logical, blocksize,
    mirror_num, &eb);
 if (ret)
  __readahead_hook(fs_info->extent_root, ((void*)0), logical, ret);
 else if (eb)
  __readahead_hook(fs_info->extent_root, eb, eb->start, ret);

 if (eb)
  free_extent_buffer(eb);

 return 1;

}
