
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_fh {int size; int data; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;


 int OP_PUTFH ;
 int cpu_to_be32 (int ) ;
 scalar_t__ decode_putfh_maxsz ;
 int * reserve_space (struct xdr_stream*,int) ;
 int xdr_encode_opaque (int *,int ,int) ;

__attribute__((used)) static void
encode_putfh(struct xdr_stream *xdr, const struct nfs_fh *fh, struct compound_hdr *hdr)
{
 int len = fh->size;
 __be32 *p;

 p = reserve_space(xdr, 8 + len);
 *p++ = cpu_to_be32(OP_PUTFH);
 xdr_encode_opaque(p, fh->data, len);
 hdr->nops++;
 hdr->replen += decode_putfh_maxsz;
}
