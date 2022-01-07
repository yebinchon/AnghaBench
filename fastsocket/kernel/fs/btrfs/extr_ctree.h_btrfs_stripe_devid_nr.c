
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct extent_buffer {int dummy; } ;
struct btrfs_chunk {int dummy; } ;


 int btrfs_stripe_devid (struct extent_buffer*,int ) ;
 int btrfs_stripe_nr (struct btrfs_chunk*,int) ;

__attribute__((used)) static inline u64 btrfs_stripe_devid_nr(struct extent_buffer *eb,
      struct btrfs_chunk *c, int nr)
{
 return btrfs_stripe_devid(eb, btrfs_stripe_nr(c, nr));
}
