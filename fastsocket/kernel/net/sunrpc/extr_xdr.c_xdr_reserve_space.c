
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {TYPE_2__* buf; TYPE_1__* iov; int * p; int * end; } ;
typedef int __be32 ;
struct TYPE_4__ {size_t len; } ;
struct TYPE_3__ {size_t iov_len; } ;


 scalar_t__ unlikely (int) ;

__be32 * xdr_reserve_space(struct xdr_stream *xdr, size_t nbytes)
{
 __be32 *p = xdr->p;
 __be32 *q;


 nbytes += 3;
 nbytes &= ~3;
 q = p + (nbytes >> 2);
 if (unlikely(q > xdr->end || q < p))
  return ((void*)0);
 xdr->p = q;
 xdr->iov->iov_len += nbytes;
 xdr->buf->len += nbytes;
 return p;
}
