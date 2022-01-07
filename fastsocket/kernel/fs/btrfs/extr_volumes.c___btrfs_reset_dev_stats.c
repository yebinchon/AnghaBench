
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_device {int dummy; } ;


 int BTRFS_DEV_STAT_VALUES_MAX ;
 int btrfs_dev_stat_reset (struct btrfs_device*,int) ;

__attribute__((used)) static void __btrfs_reset_dev_stats(struct btrfs_device *dev)
{
 int i;

 for (i = 0; i < BTRFS_DEV_STAT_VALUES_MAX; i++)
  btrfs_dev_stat_reset(dev, i);
}
