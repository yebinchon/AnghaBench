
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_free_space_ctl {int free_space; } ;
struct btrfs_free_space {int dummy; } ;


 int __bitmap_clear_bits (struct btrfs_free_space_ctl*,struct btrfs_free_space*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void bitmap_clear_bits(struct btrfs_free_space_ctl *ctl,
         struct btrfs_free_space *info, u64 offset,
         u64 bytes)
{
 __bitmap_clear_bits(ctl, info, offset, bytes);
 ctl->free_space -= bytes;
}
