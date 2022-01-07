
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;


 int __sync_blockdev (struct block_device*,int) ;

int sync_blockdev(struct block_device *bdev)
{
 return __sync_blockdev(bdev, 1);
}
