
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_devices {struct btrfs_fs_devices* seed; int opened; } ;


 int __btrfs_close_devices (struct btrfs_fs_devices*) ;
 int free_fs_devices (struct btrfs_fs_devices*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uuid_mutex ;

int btrfs_close_devices(struct btrfs_fs_devices *fs_devices)
{
 struct btrfs_fs_devices *seed_devices = ((void*)0);
 int ret;

 mutex_lock(&uuid_mutex);
 ret = __btrfs_close_devices(fs_devices);
 if (!fs_devices->opened) {
  seed_devices = fs_devices->seed;
  fs_devices->seed = ((void*)0);
 }
 mutex_unlock(&uuid_mutex);

 while (seed_devices) {
  fs_devices = seed_devices;
  seed_devices = fs_devices->seed;
  __btrfs_close_devices(fs_devices);
  free_fs_devices(fs_devices);
 }
 return ret;
}
