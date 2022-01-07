
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iovec {size_t iov_len; int iov_base; } ;


 size_t min (size_t,size_t) ;

__attribute__((used)) static void copy_iovec_hdr(const struct iovec *from, struct iovec *to,
      size_t len, int iovcount)
{
 int seg = 0;
 size_t size;
 while (len && seg < iovcount) {
  size = min(from->iov_len, len);
  to->iov_base = from->iov_base;
  to->iov_len = size;
  len -= size;
  ++from;
  ++to;
  ++seg;
 }
}
