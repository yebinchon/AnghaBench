
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nfs_readargs {int count; int offset; TYPE_1__ stateid; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;


 int NFS4_STATEID_SIZE ;
 int OP_READ ;
 int cpu_to_be32 (int ) ;
 scalar_t__ decode_read_maxsz ;
 int encode_opaque_fixed (struct xdr_stream*,int ,int ) ;
 int * reserve_space (struct xdr_stream*,int) ;
 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static void encode_read(struct xdr_stream *xdr, const struct nfs_readargs *args, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(OP_READ);

 encode_opaque_fixed(xdr, args->stateid.data, NFS4_STATEID_SIZE);

 p = reserve_space(xdr, 12);
 p = xdr_encode_hyper(p, args->offset);
 *p = cpu_to_be32(args->count);
 hdr->nops++;
 hdr->replen += decode_read_maxsz;
}
