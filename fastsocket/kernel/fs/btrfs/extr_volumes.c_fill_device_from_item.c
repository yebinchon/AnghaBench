
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_device {int uuid; int sector_size; int io_width; int io_align; int type; int bytes_used; int disk_total_bytes; int total_bytes; int devid; } ;
struct btrfs_dev_item {int dummy; } ;


 int BTRFS_UUID_SIZE ;
 int btrfs_device_bytes_used (struct extent_buffer*,struct btrfs_dev_item*) ;
 int btrfs_device_id (struct extent_buffer*,struct btrfs_dev_item*) ;
 int btrfs_device_io_align (struct extent_buffer*,struct btrfs_dev_item*) ;
 int btrfs_device_io_width (struct extent_buffer*,struct btrfs_dev_item*) ;
 int btrfs_device_sector_size (struct extent_buffer*,struct btrfs_dev_item*) ;
 int btrfs_device_total_bytes (struct extent_buffer*,struct btrfs_dev_item*) ;
 int btrfs_device_type (struct extent_buffer*,struct btrfs_dev_item*) ;
 scalar_t__ btrfs_device_uuid (struct btrfs_dev_item*) ;
 int read_extent_buffer (struct extent_buffer*,int ,unsigned long,int ) ;

__attribute__((used)) static void fill_device_from_item(struct extent_buffer *leaf,
     struct btrfs_dev_item *dev_item,
     struct btrfs_device *device)
{
 unsigned long ptr;

 device->devid = btrfs_device_id(leaf, dev_item);
 device->disk_total_bytes = btrfs_device_total_bytes(leaf, dev_item);
 device->total_bytes = device->disk_total_bytes;
 device->bytes_used = btrfs_device_bytes_used(leaf, dev_item);
 device->type = btrfs_device_type(leaf, dev_item);
 device->io_align = btrfs_device_io_align(leaf, dev_item);
 device->io_width = btrfs_device_io_width(leaf, dev_item);
 device->sector_size = btrfs_device_sector_size(leaf, dev_item);

 ptr = (unsigned long)btrfs_device_uuid(dev_item);
 read_extent_buffer(leaf, device->uuid, ptr, BTRFS_UUID_SIZE);
}
