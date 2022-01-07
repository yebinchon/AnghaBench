
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int i_blkbits; } ;
struct buffer_head {int b_size; int b_blocknr; int b_state; } ;


 int BUG_ON (int) ;
 scalar_t__ buffer_new (struct buffer_head*) ;
 int gfs2_block_map (struct inode*,int ,struct buffer_head*,int) ;

int gfs2_extent_map(struct inode *inode, u64 lblock, int *new, u64 *dblock, unsigned *extlen)
{
 struct buffer_head bh = { .b_state = 0, .b_blocknr = 0 };
 int ret;
 int create = *new;

 BUG_ON(!extlen);
 BUG_ON(!dblock);
 BUG_ON(!new);

 bh.b_size = 1 << (inode->i_blkbits + (create ? 0 : 5));
 ret = gfs2_block_map(inode, lblock, &bh, create);
 *extlen = bh.b_size >> inode->i_blkbits;
 *dblock = bh.b_blocknr;
 if (buffer_new(&bh))
  *new = 1;
 else
  *new = 0;
 return ret;
}
