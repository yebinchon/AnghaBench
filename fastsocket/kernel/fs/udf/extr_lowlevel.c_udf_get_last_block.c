
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {unsigned long s_blocksize_bits; struct block_device* s_bdev; } ;
struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_2__ {unsigned long i_size; } ;


 int CDROM_LAST_WRITTEN ;
 scalar_t__ ioctl_by_bdev (struct block_device*,int ,unsigned long) ;

unsigned long udf_get_last_block(struct super_block *sb)
{
 struct block_device *bdev = sb->s_bdev;
 unsigned long lblock = 0;





 if (ioctl_by_bdev(bdev, CDROM_LAST_WRITTEN, (unsigned long) &lblock) ||
     lblock == 0)
  lblock = bdev->bd_inode->i_size >> sb->s_blocksize_bits;

 if (lblock)
  return lblock - 1;
 else
  return 0;
}
