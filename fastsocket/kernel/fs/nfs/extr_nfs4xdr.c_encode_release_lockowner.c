
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_lowner {int dummy; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;


 int OP_RELEASE_LOCKOWNER ;
 int cpu_to_be32 (int ) ;
 scalar_t__ decode_release_lockowner_maxsz ;
 int encode_lockowner (struct xdr_stream*,struct nfs_lowner const*) ;
 int * reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_release_lockowner(struct xdr_stream *xdr, const struct nfs_lowner *lowner, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(OP_RELEASE_LOCKOWNER);
 encode_lockowner(xdr, lowner);
 hdr->nops++;
 hdr->replen += decode_release_lockowner_maxsz;
}
