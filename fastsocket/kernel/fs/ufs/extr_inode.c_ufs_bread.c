
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; } ;
struct buffer_head {int dummy; } ;


 int EIO ;
 int READ ;
 int UFSD (char*,int ,unsigned int) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 struct buffer_head* ufs_getfrag (struct inode*,unsigned int,int,int*) ;
 int wait_on_buffer (struct buffer_head*) ;

struct buffer_head * ufs_bread (struct inode * inode, unsigned fragment,
 int create, int * err)
{
 struct buffer_head * bh;

 UFSD("ENTER, ino %lu, fragment %u\n", inode->i_ino, fragment);
 bh = ufs_getfrag (inode, fragment, create, err);
 if (!bh || buffer_uptodate(bh))
  return bh;
 ll_rw_block (READ, 1, &bh);
 wait_on_buffer (bh);
 if (buffer_uptodate(bh))
  return bh;
 brelse (bh);
 *err = -EIO;
 return ((void*)0);
}
