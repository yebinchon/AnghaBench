
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct qstr {int len; int name; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;


 int OP_LINK ;
 int cpu_to_be32 (int ) ;
 scalar_t__ decode_link_maxsz ;
 int * reserve_space (struct xdr_stream*,int ) ;
 int xdr_encode_opaque (int *,int ,int ) ;

__attribute__((used)) static void encode_link(struct xdr_stream *xdr, const struct qstr *name, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 8 + name->len);
 *p++ = cpu_to_be32(OP_LINK);
 xdr_encode_opaque(p, name->name, name->len);
 hdr->nops++;
 hdr->replen += decode_link_maxsz;
}
