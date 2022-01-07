
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {size_t iov_len; int iov_base; } ;
typedef scalar_t__ ssize_t ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ access_ok (int,int ,size_t) ;
 scalar_t__ unlikely (int) ;

int generic_segment_checks(const struct iovec *iov,
   unsigned long *nr_segs, size_t *count, int access_flags)
{
 unsigned long seg;
 size_t cnt = 0;
 for (seg = 0; seg < *nr_segs; seg++) {
  const struct iovec *iv = &iov[seg];





  cnt += iv->iov_len;
  if (unlikely((ssize_t)(cnt|iv->iov_len) < 0))
   return -EINVAL;
  if (access_ok(access_flags, iv->iov_base, iv->iov_len))
   continue;
  if (seg == 0)
   return -EFAULT;
  *nr_segs = seg;
  cnt -= iv->iov_len;
  break;
 }
 *count = cnt;
 return 0;
}
