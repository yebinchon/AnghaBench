
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_device {int dummy; } ;


 int btrfs_dev_stat_set (struct btrfs_device*,int,int ) ;

__attribute__((used)) static inline void btrfs_dev_stat_reset(struct btrfs_device *dev,
     int index)
{
 btrfs_dev_stat_set(dev, index, 0);
}
