
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_open_confirmargs {TYPE_2__* seqid; TYPE_3__* stateid; } ;
struct compound_hdr {int replen; int nops; } ;
typedef void* __be32 ;
struct TYPE_6__ {int data; } ;
struct TYPE_5__ {TYPE_1__* sequence; } ;
struct TYPE_4__ {int counter; } ;


 scalar_t__ NFS4_STATEID_SIZE ;
 int OP_OPEN_CONFIRM ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ decode_open_confirm_maxsz ;
 void** reserve_space (struct xdr_stream*,scalar_t__) ;
 void** xdr_encode_opaque_fixed (void**,int ,scalar_t__) ;

__attribute__((used)) static void encode_open_confirm(struct xdr_stream *xdr, const struct nfs_open_confirmargs *arg, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 4+NFS4_STATEID_SIZE+4);
 *p++ = cpu_to_be32(OP_OPEN_CONFIRM);
 p = xdr_encode_opaque_fixed(p, arg->stateid->data, NFS4_STATEID_SIZE);
 *p = cpu_to_be32(arg->seqid->sequence->counter);
 hdr->nops++;
 hdr->replen += decode_open_confirm_maxsz;
}
