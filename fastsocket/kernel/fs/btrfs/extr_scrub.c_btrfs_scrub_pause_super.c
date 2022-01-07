
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_2__ {int scrub_super_lock; } ;


 int down_write (int *) ;

void btrfs_scrub_pause_super(struct btrfs_root *root)
{
 down_write(&root->fs_info->scrub_super_lock);
}
