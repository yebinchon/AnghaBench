
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct proc_dir_entry {TYPE_1__* proc_fops; scalar_t__ proc_iops; scalar_t__ nlink; scalar_t__ size; int gid; int uid; scalar_t__ mode; } ;
struct inode {int i_state; TYPE_1__* i_fop; scalar_t__ i_mode; scalar_t__ i_op; scalar_t__ i_nlink; scalar_t__ i_size; int i_gid; int i_uid; int i_ctime; int i_atime; int i_mtime; } ;
struct TYPE_5__ {struct proc_dir_entry* pde; scalar_t__ fd; } ;
struct TYPE_4__ {int compat_ioctl; } ;


 int CURRENT_TIME ;
 int I_NEW ;
 TYPE_3__* PROC_I (struct inode*) ;
 scalar_t__ S_ISREG (scalar_t__) ;
 int de_put (struct proc_dir_entry*) ;
 struct inode* iget_locked (struct super_block*,unsigned int) ;
 TYPE_1__ proc_reg_file_ops ;
 TYPE_1__ proc_reg_file_ops_no_compat ;
 int unlock_new_inode (struct inode*) ;

struct inode *proc_get_inode(struct super_block *sb, unsigned int ino,
    struct proc_dir_entry *de)
{
 struct inode * inode;

 inode = iget_locked(sb, ino);
 if (!inode)
  return ((void*)0);
 if (inode->i_state & I_NEW) {
  inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;
  PROC_I(inode)->fd = 0;
  PROC_I(inode)->pde = de;

  if (de->mode) {
   inode->i_mode = de->mode;
   inode->i_uid = de->uid;
   inode->i_gid = de->gid;
  }
  if (de->size)
   inode->i_size = de->size;
  if (de->nlink)
   inode->i_nlink = de->nlink;
  if (de->proc_iops)
   inode->i_op = de->proc_iops;
  if (de->proc_fops) {
   if (S_ISREG(inode->i_mode)) {






     inode->i_fop = &proc_reg_file_ops;
   } else {
    inode->i_fop = de->proc_fops;
   }
  }
  unlock_new_inode(inode);
 } else
        de_put(de);
 return inode;
}
