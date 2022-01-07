
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int blk_queue_max_hw_sectors (int ,unsigned short) ;
 scalar_t__ sscanf (char const*,char*,unsigned short*) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t store_max_sectors(struct device *dev, struct device_attribute *attr, const char *buf,
  size_t count)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 unsigned short ms;

 if (sscanf(buf, "%hu", &ms) > 0) {
  blk_queue_max_hw_sectors(sdev->request_queue, ms);
  return count;
 }
 return -EINVAL;
}
