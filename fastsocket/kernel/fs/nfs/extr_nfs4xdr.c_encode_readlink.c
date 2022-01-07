
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int dummy; } ;
struct nfs4_readlink {int dummy; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;


 int OP_READLINK ;
 int cpu_to_be32 (int ) ;
 scalar_t__ decode_readlink_maxsz ;
 int * reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_readlink(struct xdr_stream *xdr, const struct nfs4_readlink *readlink, struct rpc_rqst *req, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(OP_READLINK);
 hdr->nops++;
 hdr->replen += decode_readlink_maxsz;
}
