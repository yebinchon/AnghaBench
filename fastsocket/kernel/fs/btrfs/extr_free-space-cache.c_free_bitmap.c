
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_free_space_ctl {TYPE_1__* op; int total_bitmaps; } ;
struct btrfs_free_space {int bitmap; } ;
struct TYPE_2__ {int (* recalc_thresholds ) (struct btrfs_free_space_ctl*) ;} ;


 int btrfs_free_space_cachep ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct btrfs_free_space*) ;
 int stub1 (struct btrfs_free_space_ctl*) ;
 int unlink_free_space (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ;

__attribute__((used)) static void free_bitmap(struct btrfs_free_space_ctl *ctl,
   struct btrfs_free_space *bitmap_info)
{
 unlink_free_space(ctl, bitmap_info);
 kfree(bitmap_info->bitmap);
 kmem_cache_free(btrfs_free_space_cachep, bitmap_info);
 ctl->total_bitmaps--;
 ctl->op->recalc_thresholds(ctl);
}
