
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_dirt; } ;
struct inode {struct super_block* i_sb; } ;
struct file {struct address_space* f_mapping; } ;
struct dentry {struct inode* d_inode; } ;
struct address_space {int dummy; } ;


 int exofs_sync_fs (struct super_block*,int) ;
 int filemap_write_and_wait (struct address_space*) ;
 int write_inode_now (struct inode*,int) ;

__attribute__((used)) static int exofs_file_fsync(struct file *filp, struct dentry *dentry,
       int datasync)
{
 int ret;
 struct address_space *mapping = filp->f_mapping;
 struct inode *inode = dentry->d_inode;
 struct super_block *sb;

 ret = filemap_write_and_wait(mapping);
 if (ret)
  return ret;


 ret = write_inode_now(inode, 1);



 sb = inode->i_sb;
 if (sb->s_dirt)
  exofs_sync_fs(sb, 1);

 return ret;
}
