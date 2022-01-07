
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mode; } ;
struct TYPE_4__ {int mnt; } ;
struct file {int f_mode; TYPE_2__ f_path; TYPE_1__* f_dentry; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int FMODE_WRITE ;
 int __mnt_want_write (int ) ;
 int mnt_clone_write (int ) ;
 scalar_t__ special_file (int ) ;

int __mnt_want_write_file(struct file *file)
{
 struct inode *inode = file->f_dentry->d_inode;
 if (!(file->f_mode & FMODE_WRITE) || special_file(inode->i_mode))
  return __mnt_want_write(file->f_path.mnt);
 else
  return mnt_clone_write(file->f_path.mnt);
}
