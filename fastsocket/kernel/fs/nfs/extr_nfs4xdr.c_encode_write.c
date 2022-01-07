
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nfs_writeargs {int count; int pgbase; int pages; int stable; int offset; TYPE_1__ stateid; } ;
struct compound_hdr {int replen; int nops; } ;
typedef void* __be32 ;


 int NFS4_STATEID_SIZE ;
 int OP_WRITE ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ decode_write_maxsz ;
 int encode_opaque_fixed (struct xdr_stream*,int ,int ) ;
 void** reserve_space (struct xdr_stream*,int) ;
 void** xdr_encode_hyper (void**,int ) ;
 int xdr_write_pages (struct xdr_stream*,int ,int ,int ) ;

__attribute__((used)) static void encode_write(struct xdr_stream *xdr, const struct nfs_writeargs *args, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(OP_WRITE);

 encode_opaque_fixed(xdr, args->stateid.data, NFS4_STATEID_SIZE);

 p = reserve_space(xdr, 16);
 p = xdr_encode_hyper(p, args->offset);
 *p++ = cpu_to_be32(args->stable);
 *p = cpu_to_be32(args->count);

 xdr_write_pages(xdr, args->pages, args->pgbase, args->count);
 hdr->nops++;
 hdr->replen += decode_write_maxsz;
}
