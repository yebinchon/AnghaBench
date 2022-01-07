
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;


 int EIO ;
 int READ_META ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 struct buffer_head* ext4_getblk (int *,struct inode*,int ,int,int*) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 int put_bh (struct buffer_head*) ;
 int wait_on_buffer (struct buffer_head*) ;

struct buffer_head *ext4_bread(handle_t *handle, struct inode *inode,
          ext4_lblk_t block, int create, int *err)
{
 struct buffer_head *bh;

 bh = ext4_getblk(handle, inode, block, create, err);
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
