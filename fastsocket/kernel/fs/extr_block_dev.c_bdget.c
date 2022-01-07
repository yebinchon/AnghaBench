
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * backing_dev_info; int * a_ops; } ;
struct inode {int i_state; int i_blkbits; TYPE_1__ i_data; struct block_device* i_bdev; int i_rdev; int i_mode; } ;
struct block_device {int bd_block_size; int bd_list; scalar_t__ bd_part_count; struct inode* bd_inode; int * bd_super; int * bd_contains; } ;
typedef int dev_t ;
struct TYPE_4__ {struct block_device bdev; } ;


 TYPE_2__* BDEV_I (struct inode*) ;
 int GFP_USER ;
 int I_NEW ;
 int S_IFBLK ;
 int all_bdevs ;
 int bdev_lock ;
 int bdev_set ;
 int bdev_test ;
 int blockdev_superblock ;
 int def_blk_aops ;
 int default_backing_dev_info ;
 int hash (int ) ;
 struct inode* iget5_locked (int ,int ,int ,int ,int *) ;
 int list_add (int *,int *) ;
 int mapping_set_gfp_mask (TYPE_1__*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int unlock_new_inode (struct inode*) ;

struct block_device *bdget(dev_t dev)
{
 struct block_device *bdev;
 struct inode *inode;

 inode = iget5_locked(blockdev_superblock, hash(dev),
   bdev_test, bdev_set, &dev);

 if (!inode)
  return ((void*)0);

 bdev = &BDEV_I(inode)->bdev;

 if (inode->i_state & I_NEW) {
  bdev->bd_contains = ((void*)0);
  bdev->bd_super = ((void*)0);
  bdev->bd_inode = inode;
  bdev->bd_block_size = (1 << inode->i_blkbits);
  bdev->bd_part_count = 0;
  inode->i_mode = S_IFBLK;
  inode->i_rdev = dev;
  inode->i_bdev = bdev;
  inode->i_data.a_ops = &def_blk_aops;
  mapping_set_gfp_mask(&inode->i_data, GFP_USER);
  inode->i_data.backing_dev_info = &default_backing_dev_info;
  spin_lock(&bdev_lock);
  list_add(&bdev->bd_list, &all_bdevs);
  spin_unlock(&bdev_lock);
  unlock_new_inode(inode);
 }
 return bdev;
}
