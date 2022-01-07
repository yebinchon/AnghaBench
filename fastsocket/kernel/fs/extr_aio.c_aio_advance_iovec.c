
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kiocb {size_t ki_cur_seg; size_t ki_nr_segs; scalar_t__ ki_left; struct iovec* ki_iovec; } ;
struct iovec {scalar_t__ iov_len; int iov_base; } ;
typedef scalar_t__ ssize_t ;


 int BUG_ON (int) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static void aio_advance_iovec(struct kiocb *iocb, ssize_t ret)
{
 struct iovec *iov = &iocb->ki_iovec[iocb->ki_cur_seg];

 BUG_ON(ret <= 0);

 while (iocb->ki_cur_seg < iocb->ki_nr_segs && ret > 0) {
  ssize_t this = min((ssize_t)iov->iov_len, ret);
  iov->iov_base += this;
  iov->iov_len -= this;
  iocb->ki_left -= this;
  ret -= this;
  if (iov->iov_len == 0) {
   iocb->ki_cur_seg++;
   iov++;
  }
 }



 BUG_ON(ret > 0 && iocb->ki_left == 0);
}
