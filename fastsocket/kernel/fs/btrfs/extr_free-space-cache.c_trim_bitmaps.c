
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_free_space_ctl {scalar_t__ free_space; int unit; int tree_lock; } ;
struct btrfs_free_space {scalar_t__ bytes; } ;
struct btrfs_block_group_cache {struct btrfs_free_space_ctl* free_space_ctl; } ;


 int BITS_PER_BITMAP ;
 int ERESTARTSYS ;
 int bitmap_clear_bits (struct btrfs_free_space_ctl*,struct btrfs_free_space*,scalar_t__,scalar_t__) ;
 int cond_resched () ;
 int current ;
 int do_trimming (struct btrfs_block_group_cache*,scalar_t__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fatal_signal_pending (int ) ;
 int free_bitmap (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ offset_to_bitmap (struct btrfs_free_space_ctl*,scalar_t__) ;
 int search_bitmap (struct btrfs_free_space_ctl*,struct btrfs_free_space*,scalar_t__*,scalar_t__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct btrfs_free_space* tree_search_offset (struct btrfs_free_space_ctl*,scalar_t__,int,int ) ;

__attribute__((used)) static int trim_bitmaps(struct btrfs_block_group_cache *block_group,
   u64 *total_trimmed, u64 start, u64 end, u64 minlen)
{
 struct btrfs_free_space_ctl *ctl = block_group->free_space_ctl;
 struct btrfs_free_space *entry;
 int ret = 0;
 int ret2;
 u64 bytes;
 u64 offset = offset_to_bitmap(ctl, start);

 while (offset < end) {
  bool next_bitmap = 0;

  spin_lock(&ctl->tree_lock);

  if (ctl->free_space < minlen) {
   spin_unlock(&ctl->tree_lock);
   break;
  }

  entry = tree_search_offset(ctl, offset, 1, 0);
  if (!entry) {
   spin_unlock(&ctl->tree_lock);
   next_bitmap = 1;
   goto next;
  }

  bytes = minlen;
  ret2 = search_bitmap(ctl, entry, &start, &bytes);
  if (ret2 || start >= end) {
   spin_unlock(&ctl->tree_lock);
   next_bitmap = 1;
   goto next;
  }

  bytes = min(bytes, end - start);
  if (bytes < minlen) {
   spin_unlock(&ctl->tree_lock);
   goto next;
  }

  bitmap_clear_bits(ctl, entry, start, bytes);
  if (entry->bytes == 0)
   free_bitmap(ctl, entry);

  spin_unlock(&ctl->tree_lock);

  ret = do_trimming(block_group, total_trimmed, start, bytes,
      start, bytes);
  if (ret)
   break;
next:
  if (next_bitmap) {
   offset += BITS_PER_BITMAP * ctl->unit;
  } else {
   start += bytes;
   if (start >= offset + BITS_PER_BITMAP * ctl->unit)
    offset += BITS_PER_BITMAP * ctl->unit;
  }

  if (fatal_signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }

  cond_resched();
 }

 return ret;
}
