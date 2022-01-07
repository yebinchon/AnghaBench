
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;


 int decode_opaque_fixed (struct xdr_stream*,void*,int) ;

__attribute__((used)) static int decode_verifier(struct xdr_stream *xdr, void *verifier)
{
 return decode_opaque_fixed(xdr, verifier, 8);
}
