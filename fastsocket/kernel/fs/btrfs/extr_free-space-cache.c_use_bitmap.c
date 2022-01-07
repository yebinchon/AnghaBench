
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_free_space_ctl {int free_extents; int extents_thresh; struct btrfs_block_group_cache* private; } ;
struct btrfs_free_space {int bytes; } ;
struct TYPE_2__ {int offset; } ;
struct btrfs_block_group_cache {int sectorsize; TYPE_1__ key; } ;


 int BITS_PER_BITMAP ;

__attribute__((used)) static bool use_bitmap(struct btrfs_free_space_ctl *ctl,
        struct btrfs_free_space *info)
{
 struct btrfs_block_group_cache *block_group = ctl->private;





 if (ctl->free_extents < ctl->extents_thresh) {







  if (info->bytes <= block_group->sectorsize * 4) {
   if (ctl->free_extents * 2 <= ctl->extents_thresh)
    return 0;
  } else {
   return 0;
  }
 }





 if (BITS_PER_BITMAP * block_group->sectorsize >
     block_group->key.offset)
  return 0;

 return 1;
}
