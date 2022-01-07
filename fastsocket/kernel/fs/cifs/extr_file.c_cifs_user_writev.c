
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kiocb {int ki_pos; TYPE_3__* ki_filp; } ;
struct iovec {int dummy; } ;
struct inode {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;
struct TYPE_8__ {int invalid_mapping; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_7__ {TYPE_2__ f_path; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 TYPE_4__* CIFS_I (struct inode*) ;
 scalar_t__ cifs_iovec_write (TYPE_3__*,struct iovec const*,unsigned long,int *) ;

ssize_t cifs_user_writev(struct kiocb *iocb, const struct iovec *iov,
    unsigned long nr_segs, loff_t pos)
{
 ssize_t written;
 struct inode *inode;

 inode = iocb->ki_filp->f_path.dentry->d_inode;







 written = cifs_iovec_write(iocb->ki_filp, iov, nr_segs, &pos);
 if (written > 0) {
  CIFS_I(inode)->invalid_mapping = 1;
  iocb->ki_pos = pos;
 }

 return written;
}
