
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int brelse (struct buffer_head*) ;
 int nilfs_mark_buffer_dirty (struct buffer_head*) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;
 int nilfs_mdt_read_block (struct inode*,unsigned long,struct buffer_head**) ;
 scalar_t__ unlikely (int) ;

int nilfs_mdt_mark_block_dirty(struct inode *inode, unsigned long block)
{
 struct buffer_head *bh;
 int err;

 err = nilfs_mdt_read_block(inode, block, &bh);
 if (unlikely(err))
  return err;
 nilfs_mark_buffer_dirty(bh);
 nilfs_mdt_mark_dirty(inode);
 brelse(bh);
 return 0;
}
