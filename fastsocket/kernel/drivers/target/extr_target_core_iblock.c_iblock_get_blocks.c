
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int dummy; } ;
struct request_queue {int dummy; } ;
struct iblock_dev {struct block_device* ibd_bd; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;


 struct iblock_dev* IBLOCK_DEV (struct se_device*) ;
 struct request_queue* bdev_get_queue (struct block_device*) ;
 int iblock_emulate_read_cap_with_block_size (struct se_device*,struct block_device*,struct request_queue*) ;

__attribute__((used)) static sector_t iblock_get_blocks(struct se_device *dev)
{
 struct iblock_dev *ib_dev = IBLOCK_DEV(dev);
 struct block_device *bd = ib_dev->ibd_bd;
 struct request_queue *q = bdev_get_queue(bd);

 return iblock_emulate_read_cap_with_block_size(dev, bd, q);
}
