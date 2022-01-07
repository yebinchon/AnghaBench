
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_device {scalar_t__ dev_stat_values; } ;


 int atomic_read (scalar_t__) ;

__attribute__((used)) static inline int btrfs_dev_stat_read(struct btrfs_device *dev,
          int index)
{
 return atomic_read(dev->dev_stat_values + index);
}
