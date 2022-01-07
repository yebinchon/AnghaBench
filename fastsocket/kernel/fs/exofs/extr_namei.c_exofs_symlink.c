
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {unsigned int s_blocksize; } ;
struct inode {unsigned int i_size; int * i_op; TYPE_1__* i_mapping; struct super_block* i_sb; } ;
struct exofs_i_info {int i_data; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int * a_ops; } ;


 int ENAMETOOLONG ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFLNK ;
 int S_IRWXUGO ;
 int exofs_add_nondir (struct dentry*,struct inode*) ;
 int exofs_aops ;
 int exofs_fast_symlink_inode_operations ;
 struct exofs_i_info* exofs_i (struct inode*) ;
 struct inode* exofs_new_inode (struct inode*,int) ;
 int exofs_symlink_inode_operations ;
 int inode_dec_link_count (struct inode*) ;
 int iput (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int memcpy (int ,char const*,unsigned int) ;
 int memset (int ,int ,int) ;
 int page_symlink (struct inode*,char const*,unsigned int) ;
 int strlen (char const*) ;

__attribute__((used)) static int exofs_symlink(struct inode *dir, struct dentry *dentry,
     const char *symname)
{
 struct super_block *sb = dir->i_sb;
 int err = -ENAMETOOLONG;
 unsigned l = strlen(symname)+1;
 struct inode *inode;
 struct exofs_i_info *oi;

 if (l > sb->s_blocksize)
  goto out;

 inode = exofs_new_inode(dir, S_IFLNK | S_IRWXUGO);
 err = PTR_ERR(inode);
 if (IS_ERR(inode))
  goto out;

 oi = exofs_i(inode);
 if (l > sizeof(oi->i_data)) {

  inode->i_op = &exofs_symlink_inode_operations;
  inode->i_mapping->a_ops = &exofs_aops;
  memset(oi->i_data, 0, sizeof(oi->i_data));

  err = page_symlink(inode, symname, l);
  if (err)
   goto out_fail;
 } else {

  inode->i_op = &exofs_fast_symlink_inode_operations;
  memcpy(oi->i_data, symname, l);
  inode->i_size = l-1;
 }
 mark_inode_dirty(inode);

 err = exofs_add_nondir(dentry, inode);
out:
 return err;

out_fail:
 inode_dec_link_count(inode);
 iput(inode);
 goto out;
}
