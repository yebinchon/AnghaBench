
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct compound_hdr {int replen; int nops; } ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ nfs4_stateid ;
typedef int __be32 ;


 scalar_t__ NFS4_STATEID_SIZE ;
 int OP_DELEGRETURN ;
 int cpu_to_be32 (int ) ;
 scalar_t__ decode_delegreturn_maxsz ;
 int * reserve_space (struct xdr_stream*,scalar_t__) ;
 int xdr_encode_opaque_fixed (int *,int ,scalar_t__) ;

__attribute__((used)) static void encode_delegreturn(struct xdr_stream *xdr, const nfs4_stateid *stateid, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 4+NFS4_STATEID_SIZE);

 *p++ = cpu_to_be32(OP_DELEGRETURN);
 xdr_encode_opaque_fixed(p, stateid->data, NFS4_STATEID_SIZE);
 hdr->nops++;
 hdr->replen += decode_delegreturn_maxsz;
}
