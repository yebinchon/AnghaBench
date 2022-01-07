
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
struct inode {int i_mapping; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_8__ {scalar_t__ clientCanCacheAll; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct TYPE_7__ {TYPE_2__ f_path; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 TYPE_4__* CIFS_I (struct inode*) ;
 int cFYI (int,char*,int,struct inode*) ;
 int filemap_fdatawrite (int ) ;
 int generic_file_aio_write (struct kiocb*,struct iovec const*,unsigned long,int ) ;

__attribute__((used)) static ssize_t cifs_file_aio_write(struct kiocb *iocb, const struct iovec *iov,
       unsigned long nr_segs, loff_t pos)
{
 struct inode *inode = iocb->ki_filp->f_path.dentry->d_inode;
 ssize_t written;
 int rc;

 written = generic_file_aio_write(iocb, iov, nr_segs, pos);

 if (CIFS_I(inode)->clientCanCacheAll)
  return written;

 rc = filemap_fdatawrite(inode->i_mapping);
 if (rc)
  cFYI(1, "cifs_file_aio_write: %d rc on %p inode", rc, inode);

 return written;
}
