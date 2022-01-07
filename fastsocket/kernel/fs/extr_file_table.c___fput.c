
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct inode {int * i_cdev; int i_mode; } ;
struct TYPE_5__ {struct vfsmount* mnt; struct dentry* dentry; } ;
struct TYPE_4__ {int pid; } ;
struct file {int f_flags; int f_mode; TYPE_2__ f_path; TYPE_1__ f_owner; TYPE_3__* f_op; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_6__ {int (* release ) (struct inode*,struct file*) ;int (* fasync ) (int,struct file*,int ) ;} ;


 int FASYNC ;
 int FMODE_WRITE ;
 scalar_t__ S_ISCHR (int ) ;
 int cdev_put (int *) ;
 int dput (struct dentry*) ;
 int drop_file_write_access (struct file*) ;
 int eventpoll_release (struct file*) ;
 int file_free (struct file*) ;
 int file_kill (struct file*) ;
 int fops_put (TYPE_3__*) ;
 int fsnotify_close (struct file*) ;
 int ima_file_free (struct file*) ;
 int locks_remove_flock (struct file*) ;
 int might_sleep () ;
 int mntput (struct vfsmount*) ;
 int put_pid (int ) ;
 int security_file_free (struct file*) ;
 int stub1 (int,struct file*,int ) ;
 int stub2 (struct inode*,struct file*) ;
 scalar_t__ unlikely (int) ;

void __fput(struct file *file)
{
 struct dentry *dentry = file->f_path.dentry;
 struct vfsmount *mnt = file->f_path.mnt;
 struct inode *inode = dentry->d_inode;

 might_sleep();

 fsnotify_close(file);




 eventpoll_release(file);
 locks_remove_flock(file);

 if (unlikely(file->f_flags & FASYNC)) {
  if (file->f_op && file->f_op->fasync)
   file->f_op->fasync(-1, file, 0);
 }
 if (file->f_op && file->f_op->release)
  file->f_op->release(inode, file);
 security_file_free(file);
 ima_file_free(file);
 if (unlikely(S_ISCHR(inode->i_mode) && inode->i_cdev != ((void*)0)))
  cdev_put(inode->i_cdev);
 fops_put(file->f_op);
 put_pid(file->f_owner.pid);
 file_kill(file);
 if (file->f_mode & FMODE_WRITE)
  drop_file_write_access(file);
 file->f_path.dentry = ((void*)0);
 file->f_path.mnt = ((void*)0);
 file_free(file);
 dput(dentry);
 mntput(mnt);
}
