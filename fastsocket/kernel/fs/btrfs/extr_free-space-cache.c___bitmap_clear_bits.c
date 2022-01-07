
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct btrfs_free_space_ctl {int unit; } ;
struct btrfs_free_space {int bytes; int bitmap; int offset; } ;


 unsigned long BITS_PER_BITMAP ;
 int BUG_ON (int) ;
 int bitmap_clear (int ,unsigned long,unsigned long) ;
 unsigned long bytes_to_bits (scalar_t__,int ) ;
 unsigned long offset_to_bit (int ,int ,scalar_t__) ;

__attribute__((used)) static inline void __bitmap_clear_bits(struct btrfs_free_space_ctl *ctl,
           struct btrfs_free_space *info,
           u64 offset, u64 bytes)
{
 unsigned long start, count;

 start = offset_to_bit(info->offset, ctl->unit, offset);
 count = bytes_to_bits(bytes, ctl->unit);
 BUG_ON(start + count > BITS_PER_BITMAP);

 bitmap_clear(info->bitmap, start, count);

 info->bytes -= bytes;
}
