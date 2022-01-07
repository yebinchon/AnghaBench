
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hd_struct {int partno; } ;
struct TYPE_5__ {int holder_dir; scalar_t__ stamp; } ;
struct gendisk {int * driverfs_dev; int slave_dir; TYPE_1__ part0; int flags; } ;
struct disk_part_iter {int dummy; } ;
struct TYPE_6__ {int devt; } ;


 int DISK_PITER_INCL_EMPTY ;
 int DISK_PITER_REVERSE ;
 int GENHD_FL_UP ;
 int blk_free_devt (int ) ;
 int block_depr ;
 int delete_partition (struct gendisk*,int ) ;
 int dev_name (TYPE_2__*) ;
 int device_del (TYPE_2__*) ;
 int disk_part_iter_exit (struct disk_part_iter*) ;
 int disk_part_iter_init (struct disk_part_iter*,struct gendisk*,int) ;
 struct hd_struct* disk_part_iter_next (struct disk_part_iter*) ;
 TYPE_2__* disk_to_dev (struct gendisk*) ;
 int invalidate_partition (struct gendisk*,int ) ;
 int kobject_put (int ) ;
 int part_stat_set_all (TYPE_1__*,int ) ;
 int set_capacity (struct gendisk*,int ) ;
 int sysfs_remove_link (int ,int ) ;
 int unlink_gendisk (struct gendisk*) ;

void del_gendisk(struct gendisk *disk)
{
 struct disk_part_iter piter;
 struct hd_struct *part;


 disk_part_iter_init(&piter, disk,
        DISK_PITER_INCL_EMPTY | DISK_PITER_REVERSE);
 while ((part = disk_part_iter_next(&piter))) {
  invalidate_partition(disk, part->partno);
  delete_partition(disk, part->partno);
 }
 disk_part_iter_exit(&piter);

 invalidate_partition(disk, 0);
 set_capacity(disk, 0);
 disk->flags &= ~GENHD_FL_UP;
 unlink_gendisk(disk);
 part_stat_set_all(&disk->part0, 0);
 disk->part0.stamp = 0;

 kobject_put(disk->part0.holder_dir);
 kobject_put(disk->slave_dir);
 disk->driverfs_dev = ((void*)0);

 sysfs_remove_link(block_depr, dev_name(disk_to_dev(disk)));

 device_del(disk_to_dev(disk));
 blk_free_devt(disk_to_dev(disk)->devt);
}
