
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int NFS4ERR_RESOURCE ;
 int htonl (int ) ;
 scalar_t__ unlikely (int ) ;
 int xdr_encode_opaque (int *,char const*,unsigned int) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32 encode_string(struct xdr_stream *xdr, unsigned int len, const char *str)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 4 + len);
 if (unlikely(p == ((void*)0)))
  return htonl(NFS4ERR_RESOURCE);
 xdr_encode_opaque(p, str, len);
 return 0;
}
