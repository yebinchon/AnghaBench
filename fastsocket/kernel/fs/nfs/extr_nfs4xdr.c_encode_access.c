
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct compound_hdr {int replen; int nops; } ;
typedef void* __be32 ;


 int OP_ACCESS ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ decode_access_maxsz ;
 void** reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_access(struct xdr_stream *xdr, u32 access, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 8);
 *p++ = cpu_to_be32(OP_ACCESS);
 *p = cpu_to_be32(access);
 hdr->nops++;
 hdr->replen += decode_access_maxsz;
}
