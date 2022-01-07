
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {scalar_t__ p; scalar_t__ end; } ;
typedef int __be32 ;


 int * __xdr_inline_decode (struct xdr_stream*,size_t) ;
 int * xdr_copy_to_scratch (struct xdr_stream*,size_t) ;
 int xdr_set_next_buffer (struct xdr_stream*) ;

__be32 * xdr_inline_decode(struct xdr_stream *xdr, size_t nbytes)
{
 __be32 *p;

 if (nbytes == 0)
  return xdr->p;
 if (xdr->p == xdr->end && !xdr_set_next_buffer(xdr))
  return ((void*)0);
 p = __xdr_inline_decode(xdr, nbytes);
 if (p != ((void*)0))
  return p;
 return xdr_copy_to_scratch(xdr, nbytes);
}
