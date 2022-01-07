
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kiocb {TYPE_3__* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_8__ {scalar_t__ clientCanCacheRead; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_7__ {TYPE_2__ f_path; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 TYPE_4__* CIFS_I (struct inode*) ;
 int cifs_user_readv (struct kiocb*,struct iovec const*,unsigned long,int ) ;
 int generic_file_aio_read (struct kiocb*,struct iovec const*,unsigned long,int ) ;

ssize_t cifs_strict_readv(struct kiocb *iocb, const struct iovec *iov,
     unsigned long nr_segs, loff_t pos)
{
 struct inode *inode;

 inode = iocb->ki_filp->f_path.dentry->d_inode;

 if (CIFS_I(inode)->clientCanCacheRead)
  return generic_file_aio_read(iocb, iov, nr_segs, pos);
 return cifs_user_readv(iocb, iov, nr_segs, pos);
}
