
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_state {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct extent_buffer {scalar_t__ len; scalar_t__ start; } ;


 int EAGAIN ;
 int GFP_NOFS ;
 scalar_t__ btrfs_header_generation (struct extent_buffer*) ;
 int clear_extent_buffer_uptodate (struct extent_buffer*) ;
 scalar_t__ extent_buffer_uptodate (struct extent_buffer*) ;
 int lock_extent_bits (struct extent_io_tree*,scalar_t__,scalar_t__,int ,struct extent_state**) ;
 int printk_ratelimited (char*,unsigned long long,unsigned long long,unsigned long long) ;
 int unlock_extent_cached (struct extent_io_tree*,scalar_t__,scalar_t__,struct extent_state**,int ) ;

__attribute__((used)) static int verify_parent_transid(struct extent_io_tree *io_tree,
     struct extent_buffer *eb, u64 parent_transid,
     int atomic)
{
 struct extent_state *cached_state = ((void*)0);
 int ret;

 if (!parent_transid || btrfs_header_generation(eb) == parent_transid)
  return 0;

 if (atomic)
  return -EAGAIN;

 lock_extent_bits(io_tree, eb->start, eb->start + eb->len - 1,
    0, &cached_state);
 if (extent_buffer_uptodate(eb) &&
     btrfs_header_generation(eb) == parent_transid) {
  ret = 0;
  goto out;
 }
 printk_ratelimited("parent transid verify failed on %llu wanted %llu "
         "found %llu\n",
         (unsigned long long)eb->start,
         (unsigned long long)parent_transid,
         (unsigned long long)btrfs_header_generation(eb));
 ret = 1;
 clear_extent_buffer_uptodate(eb);
out:
 unlock_extent_cached(io_tree, eb->start, eb->start + eb->len - 1,
        &cached_state, GFP_NOFS);
 return ret;
}
