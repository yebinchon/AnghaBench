
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
struct TYPE_10__ {TYPE_4__* dentry; } ;
struct file {TYPE_5__ f_path; struct address_space* f_mapping; } ;
struct address_space {int host; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_8__ {int name; } ;
struct TYPE_9__ {TYPE_3__ d_name; TYPE_2__* d_parent; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;


 scalar_t__ EINVAL ;
 int FILE ;
 int NFSIOS_DIRECTREADBYTES ;
 int dfprintk (int ,char*,int ,int ,size_t,long long) ;
 size_t iov_length (struct iovec const*,unsigned long) ;
 int nfs_add_stats (int ,int ,size_t) ;
 scalar_t__ nfs_direct_read (struct kiocb*,struct iovec const*,unsigned long,scalar_t__) ;
 scalar_t__ nfs_sync_mapping (struct address_space*) ;

ssize_t nfs_file_direct_read(struct kiocb *iocb, const struct iovec *iov,
    unsigned long nr_segs, loff_t pos)
{
 ssize_t retval = -EINVAL;
 struct file *file = iocb->ki_filp;
 struct address_space *mapping = file->f_mapping;
 size_t count;

 count = iov_length(iov, nr_segs);
 nfs_add_stats(mapping->host, NFSIOS_DIRECTREADBYTES, count);

 dfprintk(FILE, "NFS: direct read(%s/%s, %zd@%Ld)\n",
  file->f_path.dentry->d_parent->d_name.name,
  file->f_path.dentry->d_name.name,
  count, (long long) pos);

 retval = 0;
 if (!count)
  goto out;

 retval = nfs_sync_mapping(mapping);
 if (retval)
  goto out;

 retval = nfs_direct_read(iocb, iov, nr_segs, pos);
 if (retval > 0)
  iocb->ki_pos = pos + retval;

out:
 return retval;
}
