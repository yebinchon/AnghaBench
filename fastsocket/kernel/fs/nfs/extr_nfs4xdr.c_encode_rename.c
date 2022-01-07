
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct qstr {int name; int len; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;


 int OP_RENAME ;
 int cpu_to_be32 (int ) ;
 scalar_t__ decode_rename_maxsz ;
 int encode_string (struct xdr_stream*,int ,int ) ;
 int * reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_rename(struct xdr_stream *xdr, const struct qstr *oldname, const struct qstr *newname, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(OP_RENAME);
 encode_string(xdr, oldname->len, oldname->name);
 encode_string(xdr, newname->len, newname->name);
 hdr->nops++;
 hdr->replen += decode_rename_maxsz;
}
