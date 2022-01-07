
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_mode; int i_gid; int * i_fop; int * i_op; int i_ctime; int i_mtime; int i_atime; TYPE_1__* i_mapping; int i_uid; struct super_block* i_sb; } ;
struct dlmfs_inode_private {int ip_parent; int ip_lockres; int ip_dlm; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int * backing_dev_info; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int CURRENT_TIME ;
 struct dlmfs_inode_private* DLMFS_I (struct inode*) ;
 int DLM_LVB_LEN ;

 int S_IFMT ;

 scalar_t__ S_ISDIR (int) ;
 int S_ISGID ;
 int current_fsgid () ;
 int current_fsuid () ;
 int dlmfs_backing_dev_info ;
 int dlmfs_dir_inode_operations ;
 int dlmfs_file_inode_operations ;
 int dlmfs_file_operations ;
 int i_size_write (struct inode*,int ) ;
 int igrab (struct inode*) ;
 int inc_nlink (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int simple_dir_operations ;
 int user_dlm_lock_res_init (int *,struct dentry*) ;

__attribute__((used)) static struct inode *dlmfs_get_inode(struct inode *parent,
         struct dentry *dentry,
         int mode)
{
 struct super_block *sb = parent->i_sb;
 struct inode * inode = new_inode(sb);
 struct dlmfs_inode_private *ip;

 if (!inode)
  return ((void*)0);

 inode->i_mode = mode;
 inode->i_uid = current_fsuid();
 inode->i_gid = current_fsgid();
 inode->i_mapping->backing_dev_info = &dlmfs_backing_dev_info;
 inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;

 ip = DLMFS_I(inode);
 ip->ip_dlm = DLMFS_I(parent)->ip_dlm;

 switch (mode & S_IFMT) {
 default:


  BUG();
  break;
 case 128:
  inode->i_op = &dlmfs_file_inode_operations;
  inode->i_fop = &dlmfs_file_operations;

  i_size_write(inode, DLM_LVB_LEN);

  user_dlm_lock_res_init(&ip->ip_lockres, dentry);





  ip->ip_parent = igrab(parent);
  BUG_ON(!ip->ip_parent);
  break;
 case 129:
  inode->i_op = &dlmfs_dir_inode_operations;
  inode->i_fop = &simple_dir_operations;



  inc_nlink(inode);
  break;
 }

 if (parent->i_mode & S_ISGID) {
  inode->i_gid = parent->i_gid;
  if (S_ISDIR(mode))
   inode->i_mode |= S_ISGID;
 }

 return inode;
}
