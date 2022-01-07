
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_super_block {int dummy; } ;
struct btrfs_device {scalar_t__ total_bytes; TYPE_2__* dev_root; scalar_t__ disk_total_bytes; TYPE_1__* fs_devices; int writeable; } ;
struct TYPE_6__ {struct btrfs_super_block* super_copy; } ;
struct TYPE_5__ {TYPE_3__* fs_info; } ;
struct TYPE_4__ {int total_rw_bytes; } ;


 int EACCES ;
 int EINVAL ;
 int btrfs_clear_space_info_full (TYPE_3__*) ;
 int btrfs_set_super_total_bytes (struct btrfs_super_block*,scalar_t__) ;
 scalar_t__ btrfs_super_total_bytes (struct btrfs_super_block*) ;
 int btrfs_update_device (struct btrfs_trans_handle*,struct btrfs_device*) ;

__attribute__((used)) static int __btrfs_grow_device(struct btrfs_trans_handle *trans,
        struct btrfs_device *device, u64 new_size)
{
 struct btrfs_super_block *super_copy =
  device->dev_root->fs_info->super_copy;
 u64 old_total = btrfs_super_total_bytes(super_copy);
 u64 diff = new_size - device->total_bytes;

 if (!device->writeable)
  return -EACCES;
 if (new_size <= device->total_bytes)
  return -EINVAL;

 btrfs_set_super_total_bytes(super_copy, old_total + diff);
 device->fs_devices->total_rw_bytes += diff;

 device->total_bytes = new_size;
 device->disk_total_bytes = new_size;
 btrfs_clear_space_info_full(device->dev_root->fs_info);

 return btrfs_update_device(trans, device);
}
