
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct block_device_operations {int (* direct_access ) (struct block_device*,int,void**,unsigned long*) ;} ;
struct block_device {TYPE_2__* bd_disk; } ;
typedef int sector_t ;
struct TYPE_4__ {struct block_device_operations* fops; } ;
struct TYPE_3__ {struct block_device* s_bdev; } ;


 int BUG_ON (int) ;
 int PAGE_SIZE ;
 int stub1 (struct block_device*,int,void**,unsigned long*) ;

__attribute__((used)) static inline int
__inode_direct_access(struct inode *inode, sector_t block,
        void **kaddr, unsigned long *pfn)
{
 struct block_device *bdev = inode->i_sb->s_bdev;
 const struct block_device_operations *ops = bdev->bd_disk->fops;
 sector_t sector;

 sector = block * (PAGE_SIZE / 512);

 BUG_ON(!ops->direct_access);
 return ops->direct_access(bdev, sector, kaddr, pfn);
}
