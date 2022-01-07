
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_free_space_ctl {int unit; } ;
struct btrfs_free_space {scalar_t__ offset; } ;


 int BITS_PER_BITMAP ;
 int bitmap_set_bits (struct btrfs_free_space_ctl*,struct btrfs_free_space*,scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static u64 add_bytes_to_bitmap(struct btrfs_free_space_ctl *ctl,
          struct btrfs_free_space *info, u64 offset,
          u64 bytes)
{
 u64 bytes_to_set = 0;
 u64 end;

 end = info->offset + (u64)(BITS_PER_BITMAP * ctl->unit);

 bytes_to_set = min(end - offset, bytes);

 bitmap_set_bits(ctl, info, offset, bytes_to_set);

 return bytes_to_set;

}
