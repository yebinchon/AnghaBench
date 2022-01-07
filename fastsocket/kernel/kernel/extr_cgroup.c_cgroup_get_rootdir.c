
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct dentry* s_root; } ;
struct inode {int * i_op; int * i_fop; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IWUSR ;
 int S_IXUGO ;
 int cgroup_dir_inode_operations ;
 struct inode* cgroup_new_inode (int,struct super_block*) ;
 struct dentry* d_alloc_root (struct inode*) ;
 int inc_nlink (struct inode*) ;
 int iput (struct inode*) ;
 int simple_dir_operations ;

__attribute__((used)) static int cgroup_get_rootdir(struct super_block *sb)
{
 struct inode *inode =
  cgroup_new_inode(S_IFDIR | S_IRUGO | S_IXUGO | S_IWUSR, sb);
 struct dentry *dentry;

 if (!inode)
  return -ENOMEM;

 inode->i_fop = &simple_dir_operations;
 inode->i_op = &cgroup_dir_inode_operations;

 inc_nlink(inode);
 dentry = d_alloc_root(inode);
 if (!dentry) {
  iput(inode);
  return -ENOMEM;
 }
 sb->s_root = dentry;
 return 0;
}
