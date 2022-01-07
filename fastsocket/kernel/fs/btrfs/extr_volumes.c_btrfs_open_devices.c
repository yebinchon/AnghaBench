
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_devices {scalar_t__ opened; } ;
typedef int fmode_t ;


 int __btrfs_open_devices (struct btrfs_fs_devices*,int ,void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uuid_mutex ;

int btrfs_open_devices(struct btrfs_fs_devices *fs_devices,
         fmode_t flags, void *holder)
{
 int ret;

 mutex_lock(&uuid_mutex);
 if (fs_devices->opened) {
  fs_devices->opened++;
  ret = 0;
 } else {
  ret = __btrfs_open_devices(fs_devices, flags, holder);
 }
 mutex_unlock(&uuid_mutex);
 return ret;
}
