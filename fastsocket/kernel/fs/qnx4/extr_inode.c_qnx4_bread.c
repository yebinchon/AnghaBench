
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int READ ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 struct buffer_head* qnx4_getblk (struct inode*,int,int) ;
 int wait_on_buffer (struct buffer_head*) ;

struct buffer_head *qnx4_bread(struct inode *inode, int block, int create)
{
 struct buffer_head *bh;

 bh = qnx4_getblk(inode, block, create);
 if (!bh || buffer_uptodate(bh)) {
  return bh;
 }
 ll_rw_block(READ, 1, &bh);
 wait_on_buffer(bh);
 if (buffer_uptodate(bh)) {
  return bh;
 }
 brelse(bh);

 return ((void*)0);
}
