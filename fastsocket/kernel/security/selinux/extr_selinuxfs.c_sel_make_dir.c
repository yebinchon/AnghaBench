
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned long i_ino; int * i_fop; int * i_op; int i_sb; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 int d_add (struct dentry*,struct inode*) ;
 int inc_nlink (struct inode*) ;
 struct inode* sel_make_inode (int ,int) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;

__attribute__((used)) static int sel_make_dir(struct inode *dir, struct dentry *dentry,
   unsigned long *ino)
{
 int ret = 0;
 struct inode *inode;

 inode = sel_make_inode(dir->i_sb, S_IFDIR | S_IRUGO | S_IXUGO);
 if (!inode) {
  ret = -ENOMEM;
  goto out;
 }
 inode->i_op = &simple_dir_inode_operations;
 inode->i_fop = &simple_dir_operations;
 inode->i_ino = ++(*ino);

 inc_nlink(inode);
 d_add(dentry, inode);

 inc_nlink(dir);
out:
 return ret;
}
