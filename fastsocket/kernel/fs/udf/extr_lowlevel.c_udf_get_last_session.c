
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {struct block_device* s_bdev; } ;
struct TYPE_2__ {unsigned int lba; } ;
struct cdrom_multisession {TYPE_1__ addr; scalar_t__ xa_flag; int addr_format; } ;
struct block_device {int dummy; } ;


 int CDROMMULTISESSION ;
 int CDROM_LBA ;
 int ioctl_by_bdev (struct block_device*,int ,unsigned long) ;
 int udf_debug (char*,...) ;

unsigned int udf_get_last_session(struct super_block *sb)
{
 struct cdrom_multisession ms_info;
 unsigned int vol_desc_start;
 struct block_device *bdev = sb->s_bdev;
 int i;

 vol_desc_start = 0;
 ms_info.addr_format = CDROM_LBA;
 i = ioctl_by_bdev(bdev, CDROMMULTISESSION, (unsigned long)&ms_info);

 if (i == 0) {
  udf_debug("XA disk: %s, vol_desc_start=%d\n",
     (ms_info.xa_flag ? "yes" : "no"), ms_info.addr.lba);
  if (ms_info.xa_flag)
   vol_desc_start = ms_info.addr.lba;
 } else {
  udf_debug("CDROMMULTISESSION not supported: rc=%d\n", i);
 }
 return vol_desc_start;
}
