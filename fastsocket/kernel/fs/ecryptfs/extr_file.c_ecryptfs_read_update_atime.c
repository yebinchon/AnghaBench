
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct kiocb {struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct TYPE_2__ {int dentry; } ;
struct file {TYPE_1__ f_path; } ;
struct dentry {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EIOCBQUEUED ;
 struct dentry* ecryptfs_dentry_to_lower (int ) ;
 struct vfsmount* ecryptfs_dentry_to_lower_mnt (int ) ;
 int generic_file_aio_read (struct kiocb*,struct iovec const*,unsigned long,int ) ;
 int touch_atime (struct vfsmount*,struct dentry*) ;
 int wait_on_sync_kiocb (struct kiocb*) ;

__attribute__((used)) static ssize_t ecryptfs_read_update_atime(struct kiocb *iocb,
    const struct iovec *iov,
    unsigned long nr_segs, loff_t pos)
{
 int rc;
 struct dentry *lower_dentry;
 struct vfsmount *lower_vfsmount;
 struct file *file = iocb->ki_filp;

 rc = generic_file_aio_read(iocb, iov, nr_segs, pos);




 if (-EIOCBQUEUED == rc)
  rc = wait_on_sync_kiocb(iocb);
 if (rc >= 0) {
  lower_dentry = ecryptfs_dentry_to_lower(file->f_path.dentry);
  lower_vfsmount = ecryptfs_dentry_to_lower_mnt(file->f_path.dentry);
  touch_atime(lower_vfsmount, lower_dentry);
 }
 return rc;
}
