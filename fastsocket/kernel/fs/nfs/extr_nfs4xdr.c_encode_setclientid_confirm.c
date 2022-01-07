
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nfs4_setclientid_res {TYPE_1__ confirm; int clientid; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;


 scalar_t__ NFS4_VERIFIER_SIZE ;
 int OP_SETCLIENTID_CONFIRM ;
 int cpu_to_be32 (int ) ;
 scalar_t__ decode_setclientid_confirm_maxsz ;
 int * reserve_space (struct xdr_stream*,scalar_t__) ;
 int * xdr_encode_hyper (int *,int ) ;
 int xdr_encode_opaque_fixed (int *,int ,scalar_t__) ;

__attribute__((used)) static void encode_setclientid_confirm(struct xdr_stream *xdr, const struct nfs4_setclientid_res *arg, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 12 + NFS4_VERIFIER_SIZE);
 *p++ = cpu_to_be32(OP_SETCLIENTID_CONFIRM);
 p = xdr_encode_hyper(p, arg->clientid);
 xdr_encode_opaque_fixed(p, arg->confirm.data, NFS4_VERIFIER_SIZE);
 hdr->nops++;
 hdr->replen += decode_setclientid_confirm_maxsz;
}
