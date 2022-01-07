
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int xdr_encode_opaque_fixed (int *,void const*,size_t) ;
 int * xdr_reserve_space (struct xdr_stream*,size_t) ;

__attribute__((used)) static void encode_opaque_fixed(struct xdr_stream *xdr, const void *buf, size_t len)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, len);
 xdr_encode_opaque_fixed(p, buf, len);
}
