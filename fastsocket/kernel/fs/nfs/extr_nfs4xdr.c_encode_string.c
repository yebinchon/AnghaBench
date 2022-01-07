
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int BUG_ON (int ) ;
 int xdr_encode_opaque (int *,char const*,unsigned int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_string(struct xdr_stream *xdr, unsigned int len, const char *str)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 4 + len);
 BUG_ON(p == ((void*)0));
 xdr_encode_opaque(p, str, len);
}
