
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int NFS4_OPEN_CLAIM_FH ;
 int cpu_to_be32 (int ) ;
 int * reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static inline void encode_claim_fh(struct xdr_stream *xdr)
{
 __be32 *p;

 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(NFS4_OPEN_CLAIM_FH);
}
