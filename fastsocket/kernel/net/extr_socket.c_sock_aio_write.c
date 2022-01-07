
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_iocb {int async_msg; } ;
struct kiocb {int ki_filp; } ;
struct iovec {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ loff_t ;


 int ENOMEM ;
 int ESPIPE ;
 struct sock_iocb* alloc_sock_iocb (struct kiocb*,struct sock_iocb*) ;
 int do_sock_write (int *,struct kiocb*,int ,struct iovec const*,unsigned long) ;

ssize_t sock_aio_write(struct kiocb *iocb, const struct iovec *iov,
     unsigned long nr_segs, loff_t pos)
{
 struct sock_iocb siocb, *x;

 if (pos != 0)
  return -ESPIPE;

 x = alloc_sock_iocb(iocb, &siocb);
 if (!x)
  return -ENOMEM;

 return do_sock_write(&x->async_msg, iocb, iocb->ki_filp, iov, nr_segs);
}
