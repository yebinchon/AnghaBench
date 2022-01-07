
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct se_device {int dev_reservation_lock; } ;


 int __core_scsi3_update_aptpl_buf (struct se_device*,unsigned char*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int core_scsi3_update_aptpl_buf(
 struct se_device *dev,
 unsigned char *buf,
 u32 pr_aptpl_buf_len,
 int clear_aptpl_metadata)
{
 int ret;

 spin_lock(&dev->dev_reservation_lock);
 ret = __core_scsi3_update_aptpl_buf(dev, buf, pr_aptpl_buf_len,
    clear_aptpl_metadata);
 spin_unlock(&dev->dev_reservation_lock);

 return ret;
}
