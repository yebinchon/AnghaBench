
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int i_count; } ;


 int atomic_inc (int *) ;

struct block_device *bdgrab(struct block_device *bdev)
{
 atomic_inc(&bdev->bd_inode->i_count);
 return bdev;
}
