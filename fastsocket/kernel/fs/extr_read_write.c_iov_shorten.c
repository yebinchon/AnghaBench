
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {size_t iov_len; } ;



unsigned long iov_shorten(struct iovec *iov, unsigned long nr_segs, size_t to)
{
 unsigned long seg = 0;
 size_t len = 0;

 while (seg < nr_segs) {
  seg++;
  if (len + iov->iov_len >= to) {
   iov->iov_len = to - len;
   break;
  }
  len += iov->iov_len;
  iov++;
 }
 return seg;
}
