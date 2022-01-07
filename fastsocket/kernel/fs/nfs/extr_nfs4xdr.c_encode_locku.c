
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_locku_args {TYPE_4__* fl; TYPE_3__* stateid; TYPE_2__* seqid; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;
struct TYPE_9__ {int fl_start; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_7__ {TYPE_1__* sequence; } ;
struct TYPE_6__ {int counter; } ;


 scalar_t__ NFS4_STATEID_SIZE ;
 int OP_LOCKU ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ decode_locku_maxsz ;
 int nfs4_lock_length (TYPE_4__*) ;
 int nfs4_lock_type (TYPE_4__*,int ) ;
 int * reserve_space (struct xdr_stream*,scalar_t__) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_encode_opaque_fixed (int *,int ,scalar_t__) ;

__attribute__((used)) static void encode_locku(struct xdr_stream *xdr, const struct nfs_locku_args *args, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 12+NFS4_STATEID_SIZE+16);
 *p++ = cpu_to_be32(OP_LOCKU);
 *p++ = cpu_to_be32(nfs4_lock_type(args->fl, 0));
 *p++ = cpu_to_be32(args->seqid->sequence->counter);
 p = xdr_encode_opaque_fixed(p, args->stateid->data, NFS4_STATEID_SIZE);
 p = xdr_encode_hyper(p, args->fl->fl_start);
 xdr_encode_hyper(p, nfs4_lock_length(args->fl));
 hdr->nops++;
 hdr->replen += decode_locku_maxsz;
}
