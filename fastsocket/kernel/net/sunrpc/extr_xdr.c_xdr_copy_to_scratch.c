
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t iov_len; int * iov_base; } ;
struct xdr_stream {TYPE_1__ scratch; int * p; scalar_t__ end; } ;
typedef int __be32 ;


 int * __xdr_inline_decode (struct xdr_stream*,size_t) ;
 int memcpy (void*,int *,size_t) ;
 int xdr_set_next_buffer (struct xdr_stream*) ;

__attribute__((used)) static __be32 *xdr_copy_to_scratch(struct xdr_stream *xdr, size_t nbytes)
{
 __be32 *p;
 void *cpdest = xdr->scratch.iov_base;
 size_t cplen = (char *)xdr->end - (char *)xdr->p;

 if (nbytes > xdr->scratch.iov_len)
  return ((void*)0);
 memcpy(cpdest, xdr->p, cplen);
 cpdest += cplen;
 nbytes -= cplen;
 if (!xdr_set_next_buffer(xdr))
  return ((void*)0);
 p = __xdr_inline_decode(xdr, nbytes);
 if (p == ((void*)0))
  return ((void*)0);
 memcpy(cpdest, p, nbytes);
 return xdr->scratch.iov_base;
}
