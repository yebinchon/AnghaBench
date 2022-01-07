
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_device_info {int dummy; } ;


 int btrfs_cmp_device_free_bytes ;
 int sort (struct btrfs_device_info*,size_t,int,int ,int *) ;

__attribute__((used)) static inline void btrfs_descending_sort_devices(
     struct btrfs_device_info *devices,
     size_t nr_devices)
{
 sort(devices, nr_devices, sizeof(struct btrfs_device_info),
      btrfs_cmp_device_free_bytes, ((void*)0));
}
