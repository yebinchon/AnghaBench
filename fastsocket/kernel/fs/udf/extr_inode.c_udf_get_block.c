
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_inode_info {scalar_t__ i_next_alloc_block; int i_next_alloc_goal; } ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ sector_t ;


 int BUG_ON (int) ;
 int EIO ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 struct buffer_head* inode_getblk (struct inode*,scalar_t__,int*,scalar_t__*,int*) ;
 int lock_kernel () ;
 int map_bh (struct buffer_head*,int ,scalar_t__) ;
 int set_buffer_new (struct buffer_head*) ;
 scalar_t__ udf_block_map (struct inode*,scalar_t__) ;
 int unlock_kernel () ;

__attribute__((used)) static int udf_get_block(struct inode *inode, sector_t block,
    struct buffer_head *bh_result, int create)
{
 int err, new;
 struct buffer_head *bh;
 sector_t phys = 0;
 struct udf_inode_info *iinfo;

 if (!create) {
  phys = udf_block_map(inode, block);
  if (phys)
   map_bh(bh_result, inode->i_sb, phys);
  return 0;
 }

 err = -EIO;
 new = 0;
 bh = ((void*)0);

 lock_kernel();

 iinfo = UDF_I(inode);
 if (block == iinfo->i_next_alloc_block + 1) {
  iinfo->i_next_alloc_block++;
  iinfo->i_next_alloc_goal++;
 }

 err = 0;

 bh = inode_getblk(inode, block, &err, &phys, &new);
 BUG_ON(bh);
 if (err)
  goto abort;
 BUG_ON(!phys);

 if (new)
  set_buffer_new(bh_result);
 map_bh(bh_result, inode->i_sb, phys);

abort:
 unlock_kernel();
 return err;
}
