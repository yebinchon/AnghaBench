
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct buffer_head {int b_state; int b_blocknr; } ;


 int EIO ;
 struct buffer_head* ERR_PTR (int) ;
 int affs_get_block (struct inode*,int,struct buffer_head*,int) ;
 struct buffer_head* affs_getzeroblk (int ,int ) ;

__attribute__((used)) static inline struct buffer_head *
affs_getzeroblk_ino(struct inode *inode, int block)
{
 struct buffer_head *bh, tmp_bh;
 int err;

 tmp_bh.b_state = 0;
 err = affs_get_block(inode, block, &tmp_bh, 1);
 if (!err) {
  bh = affs_getzeroblk(inode->i_sb, tmp_bh.b_blocknr);
  if (bh) {
   bh->b_state |= tmp_bh.b_state;
   return bh;
  }
  err = -EIO;
 }
 return ERR_PTR(err);
}
