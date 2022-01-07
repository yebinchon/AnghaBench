
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct btrfs_fs_devices {int missing_devices; int num_devices; int devices; } ;
struct TYPE_4__ {int func; } ;
struct btrfs_device {int missing; int uuid; int dev_alloc_list; int io_lock; struct btrfs_fs_devices* fs_devices; TYPE_2__ work; int devid; int dev_root; int dev_list; } ;
struct TYPE_3__ {int dev_root; struct btrfs_fs_devices* fs_devices; } ;


 int BTRFS_UUID_SIZE ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 struct btrfs_device* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int memcpy (int ,int *,int ) ;
 int pending_bios_fn ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct btrfs_device *add_missing_dev(struct btrfs_root *root,
         u64 devid, u8 *dev_uuid)
{
 struct btrfs_device *device;
 struct btrfs_fs_devices *fs_devices = root->fs_info->fs_devices;

 device = kzalloc(sizeof(*device), GFP_NOFS);
 if (!device)
  return ((void*)0);
 list_add(&device->dev_list,
   &fs_devices->devices);
 device->dev_root = root->fs_info->dev_root;
 device->devid = devid;
 device->work.func = pending_bios_fn;
 device->fs_devices = fs_devices;
 device->missing = 1;
 fs_devices->num_devices++;
 fs_devices->missing_devices++;
 spin_lock_init(&device->io_lock);
 INIT_LIST_HEAD(&device->dev_alloc_list);
 memcpy(device->uuid, dev_uuid, BTRFS_UUID_SIZE);
 return device;
}
