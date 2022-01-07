
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
struct compound_hdr {int replen; int nops; } ;
typedef void* __be32 ;


 int OP_GETATTR ;
 void* cpu_to_be32 (int) ;
 scalar_t__ decode_getattr_maxsz ;
 void** reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_getattr_one(struct xdr_stream *xdr, uint32_t bitmap, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 12);
 *p++ = cpu_to_be32(OP_GETATTR);
 *p++ = cpu_to_be32(1);
 *p = cpu_to_be32(bitmap);
 hdr->nops++;
 hdr->replen += decode_getattr_maxsz;
}
