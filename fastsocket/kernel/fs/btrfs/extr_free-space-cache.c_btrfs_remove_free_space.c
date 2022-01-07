
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_free_space_ctl {int tree_lock; } ;
struct btrfs_free_space {scalar_t__ offset; scalar_t__ bytes; int bitmap; } ;
struct btrfs_block_group_cache {struct btrfs_free_space_ctl* free_space_ctl; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int WARN_ON (int) ;
 int btrfs_add_free_space (struct btrfs_block_group_cache*,scalar_t__,scalar_t__) ;
 int btrfs_free_space_cachep ;
 int kmem_cache_free (int ,struct btrfs_free_space*) ;
 int link_free_space (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ offset_to_bitmap (struct btrfs_free_space_ctl*,scalar_t__) ;
 int remove_from_bitmap (struct btrfs_free_space_ctl*,struct btrfs_free_space*,scalar_t__*,scalar_t__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct btrfs_free_space* tree_search_offset (struct btrfs_free_space_ctl*,scalar_t__,int,int ) ;
 int unlink_free_space (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ;

int btrfs_remove_free_space(struct btrfs_block_group_cache *block_group,
       u64 offset, u64 bytes)
{
 struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;
 struct btrfs_free_space *info;
 int ret = 0;

 spin_lock(&ctl->tree_lock);

again:
 if (!bytes)
  goto out_lock;

 info = tree_search_offset(ctl, offset, 0, 0);
 if (!info) {




  info = tree_search_offset(ctl, offset_to_bitmap(ctl, offset),
       1, 0);
  if (!info) {







   goto out_lock;
  }
 }

 if (!info->bitmap) {
  unlink_free_space(ctl, info);
  if (offset == info->offset) {
   u64 to_free = min(bytes, info->bytes);

   info->bytes -= to_free;
   info->offset += to_free;
   if (info->bytes) {
    ret = link_free_space(ctl, info);
    WARN_ON(ret);
   } else {
    kmem_cache_free(btrfs_free_space_cachep, info);
   }

   offset += to_free;
   bytes -= to_free;
   goto again;
  } else {
   u64 old_end = info->bytes + info->offset;

   info->bytes = offset - info->offset;
   ret = link_free_space(ctl, info);
   WARN_ON(ret);
   if (ret)
    goto out_lock;


   if (old_end < offset + bytes) {
    bytes -= old_end - offset;
    offset = old_end;
    goto again;
   } else if (old_end == offset + bytes) {

    goto out_lock;
   }
   spin_unlock(&ctl->tree_lock);

   ret = btrfs_add_free_space(block_group, offset + bytes,
         old_end - (offset + bytes));
   WARN_ON(ret);
   goto out;
  }
 }

 ret = remove_from_bitmap(ctl, info, &offset, &bytes);
 if (ret == -EAGAIN)
  goto again;
 BUG_ON(ret);
out_lock:
 spin_unlock(&ctl->tree_lock);
out:
 return ret;
}
