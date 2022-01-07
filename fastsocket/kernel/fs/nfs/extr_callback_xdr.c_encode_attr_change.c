
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int const FATTR4_WORD0_CHANGE ;
 int NFS4ERR_RESOURCE ;
 int htonl (int ) ;
 scalar_t__ unlikely (int) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32 encode_attr_change(struct xdr_stream *xdr, const uint32_t *bitmap, uint64_t change)
{
 __be32 *p;

 if (!(bitmap[0] & FATTR4_WORD0_CHANGE))
  return 0;
 p = xdr_reserve_space(xdr, 8);
 if (unlikely(!p))
  return htonl(NFS4ERR_RESOURCE);
 p = xdr_encode_hyper(p, change);
 return 0;
}
