
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_lockt_args {int lock_owner; TYPE_1__* fl; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;
struct TYPE_3__ {int fl_start; } ;


 int OP_LOCKT ;
 void* cpu_to_be32 (int ) ;
 scalar_t__ decode_lockt_maxsz ;
 int encode_lockowner (struct xdr_stream*,int *) ;
 int nfs4_lock_length (TYPE_1__*) ;
 int nfs4_lock_type (TYPE_1__*,int ) ;
 int * reserve_space (struct xdr_stream*,int) ;
 int * xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static void encode_lockt(struct xdr_stream *xdr, const struct nfs_lockt_args *args, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 24);
 *p++ = cpu_to_be32(OP_LOCKT);
 *p++ = cpu_to_be32(nfs4_lock_type(args->fl, 0));
 p = xdr_encode_hyper(p, args->fl->fl_start);
 p = xdr_encode_hyper(p, nfs4_lock_length(args->fl));
 encode_lockowner(xdr, &args->lock_owner);
 hdr->nops++;
 hdr->replen += decode_lockt_maxsz;
}
