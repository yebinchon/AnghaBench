
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_free_space_ctl {int unit; int start; } ;


 int BITS_PER_BITMAP ;
 int div64_u64 (int,int) ;

__attribute__((used)) static inline u64 offset_to_bitmap(struct btrfs_free_space_ctl *ctl,
       u64 offset)
{
 u64 bitmap_start;
 u64 bytes_per_bitmap;

 bytes_per_bitmap = BITS_PER_BITMAP * ctl->unit;
 bitmap_start = offset - ctl->start;
 bitmap_start = div64_u64(bitmap_start, bytes_per_bitmap);
 bitmap_start *= bytes_per_bitmap;
 bitmap_start += ctl->start;

 return bitmap_start;
}
