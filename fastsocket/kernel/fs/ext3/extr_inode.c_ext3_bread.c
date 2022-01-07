
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int EIO ;
 int READ_META ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 struct buffer_head* ext3_getblk (int *,struct inode*,int,int,int*) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 int put_bh (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

struct buffer_head *ext3_bread(handle_t *handle, struct inode *inode,
          int block, int create, int *err)
{
 struct buffer_head * bh;

 bh = ext3_getblk(handle, inode, block, create, err);
 if (!bh)
  return bh;
 if (buffer_uptodate(bh))
  return bh;
 ll_rw_block(READ_META, 1, &bh);
 wait_on_buffer(bh);
 if (buffer_uptodate(bh))
  return bh;
 put_bh(bh);
 *err = -EIO;
 return ((void*)0);
}
