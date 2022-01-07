
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct block_device_operations* fops; } ;
struct block_device_operations {int (* revalidate_disk ) (struct gendisk*) ;int (* media_changed ) (struct gendisk*) ;} ;
struct block_device {struct gendisk* bd_disk; } ;


 int flush_disk (struct block_device*,int) ;
 int stub1 (struct gendisk*) ;
 int stub2 (struct gendisk*) ;

int check_disk_change(struct block_device *bdev)
{
 struct gendisk *disk = bdev->bd_disk;
 const struct block_device_operations *bdops = disk->fops;

 if (!bdops->media_changed)
  return 0;
 if (!bdops->media_changed(bdev->bd_disk))
  return 0;

 flush_disk(bdev, 1);
 if (bdops->revalidate_disk)
  bdops->revalidate_disk(bdev->bd_disk);
 return 1;
}
