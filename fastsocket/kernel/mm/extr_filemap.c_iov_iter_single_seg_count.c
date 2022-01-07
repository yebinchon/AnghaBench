
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {scalar_t__ iov_len; } ;
struct iov_iter {int nr_segs; size_t count; scalar_t__ iov_offset; struct iovec* iov; } ;


 size_t min (size_t,scalar_t__) ;

size_t iov_iter_single_seg_count(const struct iov_iter *i)
{
 const struct iovec *iov = i->iov;
 if (i->nr_segs == 1)
  return i->count;
 else
  return min(i->count, iov->iov_len - i->iov_offset);
}
