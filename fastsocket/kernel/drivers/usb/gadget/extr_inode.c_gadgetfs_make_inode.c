
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_mode; struct file_operations const* i_fop; void* i_private; int i_ctime; int i_mtime; int i_atime; int i_gid; int i_uid; } ;
struct file_operations {int dummy; } ;


 int CURRENT_TIME ;
 int default_gid ;
 int default_uid ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static struct inode *
gadgetfs_make_inode (struct super_block *sb,
  void *data, const struct file_operations *fops,
  int mode)
{
 struct inode *inode = new_inode (sb);

 if (inode) {
  inode->i_mode = mode;
  inode->i_uid = default_uid;
  inode->i_gid = default_gid;
  inode->i_atime = inode->i_mtime = inode->i_ctime
    = CURRENT_TIME;
  inode->i_private = data;
  inode->i_fop = fops;
 }
 return inode;
}
