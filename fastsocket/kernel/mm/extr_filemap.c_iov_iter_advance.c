
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct iovec {size_t iov_len; } const iovec ;
struct iov_iter {size_t count; int nr_segs; size_t iov_offset; struct iovec const* iov; } ;


 int BUG_ON (int) ;
 scalar_t__ likely (int) ;
 int min (size_t,size_t) ;
 scalar_t__ unlikely (int) ;

void iov_iter_advance(struct iov_iter *i, size_t bytes)
{
 BUG_ON(i->count < bytes);

 if (likely(i->nr_segs == 1)) {
  i->iov_offset += bytes;
  i->count -= bytes;
 } else {
  const struct iovec *iov = i->iov;
  size_t base = i->iov_offset;





  while (bytes || unlikely(i->count && !iov->iov_len)) {
   int copy;

   copy = min(bytes, iov->iov_len - base);
   BUG_ON(!i->count || i->count < copy);
   i->count -= copy;
   bytes -= copy;
   base += copy;
   if (iov->iov_len == base) {
    iov++;
    base = 0;
   }
  }
  i->iov = iov;
  i->iov_offset = base;
 }
}
