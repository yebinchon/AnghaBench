
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_device {int dummy; } ;


 int btrfs_dev_stat_inc (struct btrfs_device*,int) ;
 int btrfs_dev_stat_print_on_error (struct btrfs_device*) ;

void btrfs_dev_stat_inc_and_print(struct btrfs_device *dev, int index)
{
 btrfs_dev_stat_inc(dev, index);
 btrfs_dev_stat_print_on_error(dev);
}
