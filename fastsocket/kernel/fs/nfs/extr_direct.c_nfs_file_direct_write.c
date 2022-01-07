
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kiocb {scalar_t__ ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int i_lock; } ;
struct TYPE_10__ {TYPE_4__* dentry; } ;
struct file {TYPE_5__ f_path; struct address_space* f_mapping; } ;
struct address_space {struct inode* host; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_8__ {int name; } ;
struct TYPE_9__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;


 int EINVAL ;
 int FILE ;
 int NFSIOS_DIRECTWRITTENBYTES ;
 int dfprintk (int ,char*,int ,int ,size_t,long long) ;
 int generic_write_checks (struct file*,scalar_t__*,size_t*,int ) ;
 scalar_t__ i_size_read (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 size_t iov_length (struct iovec const*,unsigned long) ;
 int nfs_add_stats (struct inode*,int ,size_t) ;
 int nfs_direct_write (struct kiocb*,struct iovec const*,unsigned long,scalar_t__,size_t) ;
 int nfs_sync_mapping (struct address_space*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

ssize_t nfs_file_direct_write(struct kiocb *iocb, const struct iovec *iov,
    unsigned long nr_segs, loff_t pos)
{
 ssize_t retval = -EINVAL;
 struct file *file = iocb->ki_filp;
 struct address_space *mapping = file->f_mapping;
 size_t count;

 count = iov_length(iov, nr_segs);
 nfs_add_stats(mapping->host, NFSIOS_DIRECTWRITTENBYTES, count);

 dfprintk(FILE, "NFS: direct write(%s/%s, %zd@%Ld)\n",
  file->f_path.dentry->d_parent->d_name.name,
  file->f_path.dentry->d_name.name,
  count, (long long) pos);

 retval = generic_write_checks(file, &pos, &count, 0);
 if (retval)
  goto out;

 retval = -EINVAL;
 if ((ssize_t) count < 0)
  goto out;
 retval = 0;
 if (!count)
  goto out;

 retval = nfs_sync_mapping(mapping);
 if (retval)
  goto out;

 retval = nfs_direct_write(iocb, iov, nr_segs, pos, count);
 if (retval > 0) {
  struct inode *inode = mapping->host;

  iocb->ki_pos = pos + retval;
  spin_lock(&inode->i_lock);
  if (i_size_read(inode) < iocb->ki_pos)
   i_size_write(inode, iocb->ki_pos);
  spin_unlock(&inode->i_lock);
 }
out:
 return retval;
}
