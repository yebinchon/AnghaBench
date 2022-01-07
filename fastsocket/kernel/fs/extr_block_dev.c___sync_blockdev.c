
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int i_mapping; } ;


 int filemap_flush (int ) ;
 int filemap_write_and_wait (int ) ;

int __sync_blockdev(struct block_device *bdev, int wait)
{
 if (!bdev)
  return 0;
 if (!wait)
  return filemap_flush(bdev->bd_inode->i_mapping);
 return filemap_write_and_wait(bdev->bd_inode->i_mapping);
}
