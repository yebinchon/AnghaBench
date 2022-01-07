
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zram {scalar_t__ queue; scalar_t__ disk; } ;
struct TYPE_2__ {int kobj; } ;


 int blk_cleanup_queue (scalar_t__) ;
 int del_gendisk (scalar_t__) ;
 TYPE_1__* disk_to_dev (scalar_t__) ;
 int put_disk (scalar_t__) ;
 int sysfs_remove_group (int *,int *) ;
 int zram_disk_attr_group ;

__attribute__((used)) static void destroy_device(struct zram *zram)
{
 sysfs_remove_group(&disk_to_dev(zram->disk)->kobj,
   &zram_disk_attr_group);

 if (zram->disk) {
  del_gendisk(zram->disk);
  put_disk(zram->disk);
 }

 if (zram->queue)
  blk_cleanup_queue(zram->queue);
}
