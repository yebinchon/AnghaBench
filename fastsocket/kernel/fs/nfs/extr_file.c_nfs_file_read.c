
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kiocb {TYPE_4__* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int name; } ;
struct dentry {TYPE_3__ d_name; TYPE_2__* d_parent; struct inode* d_inode; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ loff_t ;
struct TYPE_10__ {struct dentry* dentry; } ;
struct TYPE_9__ {int f_flags; int f_mapping; TYPE_5__ f_path; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_7__ {TYPE_1__ d_name; } ;


 int NFSIOS_NORMALREADBYTES ;
 int O_DIRECT ;
 int dprintk (char*,int ,int ,unsigned long,unsigned long) ;
 scalar_t__ generic_file_aio_read (struct kiocb*,struct iovec const*,unsigned long,scalar_t__) ;
 size_t iov_length (struct iovec const*,unsigned long) ;
 int nfs_add_stats (struct inode*,int ,size_t) ;
 scalar_t__ nfs_file_direct_read (struct kiocb*,struct iovec const*,unsigned long,scalar_t__) ;
 scalar_t__ nfs_revalidate_mapping (struct inode*,int ) ;

__attribute__((used)) static ssize_t
nfs_file_read(struct kiocb *iocb, const struct iovec *iov,
  unsigned long nr_segs, loff_t pos)
{
 struct dentry * dentry = iocb->ki_filp->f_path.dentry;
 struct inode * inode = dentry->d_inode;
 ssize_t result;
 size_t count = iov_length(iov, nr_segs);

 if (iocb->ki_filp->f_flags & O_DIRECT)
  return nfs_file_direct_read(iocb, iov, nr_segs, pos);

 dprintk("NFS: read(%s/%s, %lu@%lu)\n",
  dentry->d_parent->d_name.name, dentry->d_name.name,
  (unsigned long) count, (unsigned long) pos);

 result = nfs_revalidate_mapping(inode, iocb->ki_filp->f_mapping);
 nfs_add_stats(inode, NFSIOS_NORMALREADBYTES, count);
 if (!result)
  result = generic_file_aio_read(iocb, iov, nr_segs, pos);
 return result;
}
