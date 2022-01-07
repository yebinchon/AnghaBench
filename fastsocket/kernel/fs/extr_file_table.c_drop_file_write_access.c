
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct inode {int i_mode; } ;
struct TYPE_2__ {struct dentry* dentry; struct vfsmount* mnt; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;


 int __mnt_drop_write (struct vfsmount*) ;
 scalar_t__ file_check_writeable (struct file*) ;
 int file_release_write (struct file*) ;
 int put_write_access (struct inode*) ;
 scalar_t__ special_file (int ) ;

void drop_file_write_access(struct file *file)
{
 struct vfsmount *mnt = file->f_path.mnt;
 struct dentry *dentry = file->f_path.dentry;
 struct inode *inode = dentry->d_inode;

 put_write_access(inode);

 if (special_file(inode->i_mode))
  return;
 if (file_check_writeable(file) != 0)
  return;
 __mnt_drop_write(mnt);
 file_release_write(file);
}
