
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;


 int EEXIST ;
 int ENOENT ;
 int nilfs_mdt_create_block (struct inode*,unsigned long,struct buffer_head**,void (*) (struct inode*,struct buffer_head*,void*)) ;
 int nilfs_mdt_read_block (struct inode*,unsigned long,struct buffer_head**) ;
 scalar_t__ unlikely (int) ;

int nilfs_mdt_get_block(struct inode *inode, unsigned long blkoff, int create,
   void (*init_block)(struct inode *,
        struct buffer_head *, void *),
   struct buffer_head **out_bh)
{
 int ret;


 retry:
 ret = nilfs_mdt_read_block(inode, blkoff, out_bh);
 if (!create || ret != -ENOENT)
  return ret;

 ret = nilfs_mdt_create_block(inode, blkoff, out_bh, init_block);
 if (unlikely(ret == -EEXIST)) {

  goto retry;
 }
 return ret;
}
