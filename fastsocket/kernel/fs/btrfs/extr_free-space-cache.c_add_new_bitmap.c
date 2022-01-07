
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_free_space_ctl {TYPE_1__* op; int total_bitmaps; } ;
struct btrfs_free_space {int list; scalar_t__ bytes; int offset; } ;
struct TYPE_2__ {int (* recalc_thresholds ) (struct btrfs_free_space_ctl*) ;} ;


 int INIT_LIST_HEAD (int *) ;
 int link_free_space (struct btrfs_free_space_ctl*,struct btrfs_free_space*) ;
 int offset_to_bitmap (struct btrfs_free_space_ctl*,int ) ;
 int stub1 (struct btrfs_free_space_ctl*) ;

__attribute__((used)) static void add_new_bitmap(struct btrfs_free_space_ctl *ctl,
      struct btrfs_free_space *info, u64 offset)
{
 info->offset = offset_to_bitmap(ctl, offset);
 info->bytes = 0;
 INIT_LIST_HEAD(&info->list);
 link_free_space(ctl, info);
 ctl->total_bitmaps++;

 ctl->op->recalc_thresholds(ctl);
}
