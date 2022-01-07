
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct btrfs_root {TYPE_2__* fs_info; } ;
struct btrfs_fs_devices {struct btrfs_fs_devices* seed; int seeding; int fsid; } ;
struct TYPE_4__ {TYPE_1__* fs_devices; int bdev_holder; } ;
struct TYPE_3__ {struct btrfs_fs_devices* seed; } ;


 int BTRFS_UUID_SIZE ;
 int BUG_ON (int) ;
 int EINVAL ;
 int ENOENT ;
 int FMODE_READ ;
 scalar_t__ IS_ERR (struct btrfs_fs_devices*) ;
 int PTR_ERR (struct btrfs_fs_devices*) ;
 int __btrfs_close_devices (struct btrfs_fs_devices*) ;
 int __btrfs_open_devices (struct btrfs_fs_devices*,int ,int ) ;
 struct btrfs_fs_devices* clone_fs_devices (struct btrfs_fs_devices*) ;
 struct btrfs_fs_devices* find_fsid (int *) ;
 int free_fs_devices (struct btrfs_fs_devices*) ;
 int memcmp (int ,int *,int ) ;
 int mutex_is_locked (int *) ;
 int uuid_mutex ;

__attribute__((used)) static int open_seed_devices(struct btrfs_root *root, u8 *fsid)
{
 struct btrfs_fs_devices *fs_devices;
 int ret;

 BUG_ON(!mutex_is_locked(&uuid_mutex));

 fs_devices = root->fs_info->fs_devices->seed;
 while (fs_devices) {
  if (!memcmp(fs_devices->fsid, fsid, BTRFS_UUID_SIZE)) {
   ret = 0;
   goto out;
  }
  fs_devices = fs_devices->seed;
 }

 fs_devices = find_fsid(fsid);
 if (!fs_devices) {
  ret = -ENOENT;
  goto out;
 }

 fs_devices = clone_fs_devices(fs_devices);
 if (IS_ERR(fs_devices)) {
  ret = PTR_ERR(fs_devices);
  goto out;
 }

 ret = __btrfs_open_devices(fs_devices, FMODE_READ,
       root->fs_info->bdev_holder);
 if (ret) {
  free_fs_devices(fs_devices);
  goto out;
 }

 if (!fs_devices->seeding) {
  __btrfs_close_devices(fs_devices);
  free_fs_devices(fs_devices);
  ret = -EINVAL;
  goto out;
 }

 fs_devices->seed = root->fs_info->fs_devices->seed;
 root->fs_info->fs_devices->seed = fs_devices;
out:
 return ret;
}
