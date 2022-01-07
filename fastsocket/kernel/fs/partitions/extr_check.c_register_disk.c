
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hd_struct {int dummy; } ;
struct TYPE_3__ {void* holder_dir; } ;
struct gendisk {int flags; void* slave_dir; TYPE_1__ part0; int disk_name; int driverfs_dev; } ;
struct disk_part_iter {int dummy; } ;
struct device {int kobj; int parent; } ;
struct block_device {int dummy; } ;
struct TYPE_4__ {int kobj; } ;


 int FMODE_READ ;
 int GENHD_FL_INVALIDATED ;
 int KOBJ_ADD ;
 struct block_device* bdget_disk (struct gendisk*,int ) ;
 int blkdev_get (struct block_device*,int ) ;
 int blkdev_put (struct block_device*,int ) ;
 int block_depr ;
 int dev_set_name (struct device*,char*,int ) ;
 int dev_set_uevent_suppress (struct device*,int) ;
 scalar_t__ device_add (struct device*) ;
 int device_del (struct device*) ;
 int disk_part_iter_exit (struct disk_part_iter*) ;
 int disk_part_iter_init (struct disk_part_iter*,struct gendisk*,int ) ;
 struct hd_struct* disk_part_iter_next (struct disk_part_iter*) ;
 int disk_partitionable (struct gendisk*) ;
 struct device* disk_to_dev (struct gendisk*) ;
 int get_capacity (struct gendisk*) ;
 void* kobject_create_and_add (char*,int *) ;
 int kobject_name (int *) ;
 int kobject_uevent (int *,int ) ;
 TYPE_2__* part_to_dev (struct hd_struct*) ;
 int sysfs_create_link (int ,int *,int ) ;

void register_disk(struct gendisk *disk)
{
 struct device *ddev = disk_to_dev(disk);
 struct block_device *bdev;
 struct disk_part_iter piter;
 struct hd_struct *part;
 int err;

 ddev->parent = disk->driverfs_dev;

 dev_set_name(ddev, "%s", disk->disk_name);


 dev_set_uevent_suppress(ddev, 1);

 if (device_add(ddev))
  return;

 err = sysfs_create_link(block_depr, &ddev->kobj,
    kobject_name(&ddev->kobj));
 if (err) {
  device_del(ddev);
  return;
 }

 disk->part0.holder_dir = kobject_create_and_add("holders", &ddev->kobj);
 disk->slave_dir = kobject_create_and_add("slaves", &ddev->kobj);


 if (!disk_partitionable(disk))
  goto exit;


 if (!get_capacity(disk))
  goto exit;

 bdev = bdget_disk(disk, 0);
 if (!bdev)
  goto exit;

 disk->flags |= GENHD_FL_INVALIDATED;
 err = blkdev_get(bdev, FMODE_READ);
 if (err < 0)
  goto exit;
 blkdev_put(bdev, FMODE_READ);

exit:

 dev_set_uevent_suppress(ddev, 0);
 kobject_uevent(&ddev->kobj, KOBJ_ADD);


 disk_part_iter_init(&piter, disk, 0);
 while ((part = disk_part_iter_next(&piter)))
  kobject_uevent(&part_to_dev(part)->kobj, KOBJ_ADD);
 disk_part_iter_exit(&piter);
}
