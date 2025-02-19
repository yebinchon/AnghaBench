
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition {scalar_t__ sys_ind; } ;
struct block_device {int dummy; } ;
typedef int Sector ;


 unsigned char AIX_LABEL_MAGIC1 ;
 unsigned char AIX_LABEL_MAGIC2 ;
 unsigned char AIX_LABEL_MAGIC3 ;
 unsigned char AIX_LABEL_MAGIC4 ;
 scalar_t__ LINUX_DATA_PARTITION ;
 scalar_t__ LINUX_LVM_PARTITION ;
 scalar_t__ LINUX_RAID_PARTITION ;
 scalar_t__ LINUX_SWAP_PARTITION ;
 scalar_t__ is_extended_partition (struct partition*) ;
 int put_dev_sector (int ) ;
 unsigned char* read_dev_sector (struct block_device*,int,int *) ;

__attribute__((used)) static int aix_magic_present(unsigned char *p, struct block_device *bdev)
{
 struct partition *pt = (struct partition *) (p + 0x1be);
 Sector sect;
 unsigned char *d;
 int slot, ret = 0;

 if (!(p[0] == AIX_LABEL_MAGIC1 &&
  p[1] == AIX_LABEL_MAGIC2 &&
  p[2] == AIX_LABEL_MAGIC3 &&
  p[3] == AIX_LABEL_MAGIC4))
  return 0;

 for (slot = 1; slot <= 4; slot++, pt++) {
  if (pt->sys_ind == LINUX_SWAP_PARTITION ||
   pt->sys_ind == LINUX_RAID_PARTITION ||
   pt->sys_ind == LINUX_DATA_PARTITION ||
   pt->sys_ind == LINUX_LVM_PARTITION ||
   is_extended_partition(pt))
   return 0;
 }
 d = read_dev_sector(bdev, 7, &sect);
 if (d) {
  if (d[0] == '_' && d[1] == 'L' && d[2] == 'V' && d[3] == 'M')
   ret = 1;
  put_dev_sector(sect);
 };
 return ret;
}
