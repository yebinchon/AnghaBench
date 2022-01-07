
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_commitargs {int count; int offset; } ;
struct compound_hdr {int replen; int nops; } ;
typedef void* __be32 ;


 int OP_COMMIT ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ decode_commit_maxsz ;
 void** reserve_space (struct xdr_stream*,int) ;
 void** xdr_encode_hyper (void**,int ) ;

__attribute__((used)) static void encode_commit(struct xdr_stream *xdr, const struct nfs_commitargs *args, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 16);
 *p++ = cpu_to_be32(OP_COMMIT);
 p = xdr_encode_hyper(p, args->offset);
 *p = cpu_to_be32(args->count);
 hdr->nops++;
 hdr->replen += decode_commit_maxsz;
}
