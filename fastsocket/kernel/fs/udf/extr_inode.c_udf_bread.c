
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int EIO ;
 int READ ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 struct buffer_head* udf_getblk (struct inode*,int,int,int*) ;
 int wait_on_buffer (struct buffer_head*) ;

struct buffer_head *udf_bread(struct inode *inode, int block,
         int create, int *err)
{
 struct buffer_head *bh = ((void*)0);

 bh = udf_getblk(inode, block, create, err);
 if (!bh)
  return ((void*)0);

 if (buffer_uptodate(bh))
  return bh;

 ll_rw_block(READ, 1, &bh);

 wait_on_buffer(bh);
 if (buffer_uptodate(bh))
  return bh;

 brelse(bh);
 *err = -EIO;
 return ((void*)0);
}
