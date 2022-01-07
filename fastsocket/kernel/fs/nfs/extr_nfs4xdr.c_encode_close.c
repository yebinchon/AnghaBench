
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_closeargs {TYPE_3__* stateid; TYPE_2__* seqid; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;
struct TYPE_6__ {int data; } ;
struct TYPE_5__ {TYPE_1__* sequence; } ;
struct TYPE_4__ {int counter; } ;


 scalar_t__ NFS4_STATEID_SIZE ;
 int OP_CLOSE ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ decode_close_maxsz ;
 int * reserve_space (struct xdr_stream*,scalar_t__) ;
 int xdr_encode_opaque_fixed (int *,int ,scalar_t__) ;

__attribute__((used)) static void encode_close(struct xdr_stream *xdr, const struct nfs_closeargs *arg, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 8+NFS4_STATEID_SIZE);
 *p++ = cpu_to_be32(OP_CLOSE);
 *p++ = cpu_to_be32(arg->seqid->sequence->counter);
 xdr_encode_opaque_fixed(p, arg->stateid->data, NFS4_STATEID_SIZE);
 hdr->nops++;
 hdr->replen += decode_close_maxsz;
}
