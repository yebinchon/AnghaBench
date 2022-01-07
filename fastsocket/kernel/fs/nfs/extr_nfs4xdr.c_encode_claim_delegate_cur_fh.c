
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ nfs4_stateid ;
typedef int __be32 ;


 int NFS4_OPEN_CLAIM_DELEG_CUR_FH ;
 int NFS4_STATEID_SIZE ;
 int cpu_to_be32 (int ) ;
 int encode_opaque_fixed (struct xdr_stream*,int ,int ) ;
 int * reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static inline void encode_claim_delegate_cur_fh(struct xdr_stream *xdr, const nfs4_stateid *stateid)
{
 __be32 *p;

 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(NFS4_OPEN_CLAIM_DELEG_CUR_FH);
 encode_opaque_fixed(xdr, stateid->data, NFS4_STATEID_SIZE);
}
