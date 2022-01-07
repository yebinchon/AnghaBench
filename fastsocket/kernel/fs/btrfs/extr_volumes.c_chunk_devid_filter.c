
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_stripe {int dummy; } ;
struct btrfs_chunk {int dummy; } ;
struct btrfs_balance_args {scalar_t__ devid; } ;


 int btrfs_chunk_num_stripes (struct extent_buffer*,struct btrfs_chunk*) ;
 scalar_t__ btrfs_stripe_devid (struct extent_buffer*,struct btrfs_stripe*) ;
 struct btrfs_stripe* btrfs_stripe_nr (struct btrfs_chunk*,int) ;

__attribute__((used)) static int chunk_devid_filter(struct extent_buffer *leaf,
         struct btrfs_chunk *chunk,
         struct btrfs_balance_args *bargs)
{
 struct btrfs_stripe *stripe;
 int num_stripes = btrfs_chunk_num_stripes(leaf, chunk);
 int i;

 for (i = 0; i < num_stripes; i++) {
  stripe = btrfs_stripe_nr(chunk, i);
  if (btrfs_stripe_devid(leaf, stripe) == bargs->devid)
   return 0;
 }

 return 1;
}
