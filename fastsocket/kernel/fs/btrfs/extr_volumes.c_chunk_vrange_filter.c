
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_chunk {int dummy; } ;
struct btrfs_balance_args {scalar_t__ vend; scalar_t__ vstart; } ;


 scalar_t__ btrfs_chunk_length (struct extent_buffer*,struct btrfs_chunk*) ;

__attribute__((used)) static int chunk_vrange_filter(struct extent_buffer *leaf,
          struct btrfs_chunk *chunk,
          u64 chunk_offset,
          struct btrfs_balance_args *bargs)
{
 if (chunk_offset < bargs->vend &&
     chunk_offset + btrfs_chunk_length(leaf, chunk) > bargs->vstart)

  return 0;

 return 1;
}
