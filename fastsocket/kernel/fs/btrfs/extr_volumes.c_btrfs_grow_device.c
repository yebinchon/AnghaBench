
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_device {int dev_root; } ;


 int __btrfs_grow_device (struct btrfs_trans_handle*,struct btrfs_device*,int ) ;
 int lock_chunks (int ) ;
 int unlock_chunks (int ) ;

int btrfs_grow_device(struct btrfs_trans_handle *trans,
        struct btrfs_device *device, u64 new_size)
{
 int ret;
 lock_chunks(device->dev_root);
 ret = __btrfs_grow_device(trans, device, new_size);
 unlock_chunks(device->dev_root);
 return ret;
}
