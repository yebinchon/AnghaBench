
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {int ki_pos; int ki_filp; } ;
struct iovec {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int loff_t ;


 scalar_t__ cifs_iovec_read (int ,struct iovec const*,unsigned long,int *) ;

ssize_t cifs_user_readv(struct kiocb *iocb, const struct iovec *iov,
          unsigned long nr_segs, loff_t pos)
{
 ssize_t read;

 read = cifs_iovec_read(iocb->ki_filp, iov, nr_segs, &pos);
 if (read > 0)
  iocb->ki_pos = pos;

 return read;
}
