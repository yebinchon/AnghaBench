
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_free_space_ctl {scalar_t__ free_extents; scalar_t__ extents_thresh; } ;
struct btrfs_free_space {int bytes; } ;


 int INODES_PER_BITMAP ;

__attribute__((used)) static bool use_bitmap(struct btrfs_free_space_ctl *ctl,
         struct btrfs_free_space *info)
{
 if (ctl->free_extents < ctl->extents_thresh ||
     info->bytes > INODES_PER_BITMAP / 10)
  return 0;

 return 1;
}
