
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_free_space_ctl {int tree_lock; } ;
struct btrfs_free_cluster {int lock; struct btrfs_block_group_cache* block_group; } ;
struct btrfs_block_group_cache {struct btrfs_free_space_ctl* free_space_ctl; int count; } ;


 int __btrfs_return_cluster_to_free_space (struct btrfs_block_group_cache*,struct btrfs_free_cluster*) ;
 int atomic_inc (int *) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int btrfs_return_cluster_to_free_space(
          struct btrfs_block_group_cache *block_group,
          struct btrfs_free_cluster *cluster)
{
 struct btrfs_free_space_ctl *ctl;
 int ret;


 spin_lock(&cluster->lock);
 if (!block_group) {
  block_group = cluster->block_group;
  if (!block_group) {
   spin_unlock(&cluster->lock);
   return 0;
  }
 } else if (cluster->block_group != block_group) {

  spin_unlock(&cluster->lock);
  return 0;
 }
 atomic_inc(&block_group->count);
 spin_unlock(&cluster->lock);

 ctl = block_group->free_space_ctl;


 spin_lock(&ctl->tree_lock);
 ret = __btrfs_return_cluster_to_free_space(block_group, cluster);
 spin_unlock(&ctl->tree_lock);


 btrfs_put_block_group(block_group);
 return ret;
}
