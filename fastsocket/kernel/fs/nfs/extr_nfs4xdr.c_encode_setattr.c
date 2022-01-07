
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nfs_setattrargs {int iap; TYPE_1__ stateid; } ;
struct nfs_server {int dummy; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;


 scalar_t__ NFS4_STATEID_SIZE ;
 int OP_SETATTR ;
 int cpu_to_be32 (int ) ;
 scalar_t__ decode_setattr_maxsz ;
 int encode_attrs (struct xdr_stream*,int ,struct nfs_server const*) ;
 int * reserve_space (struct xdr_stream*,scalar_t__) ;
 int xdr_encode_opaque_fixed (int *,int ,scalar_t__) ;

__attribute__((used)) static void encode_setattr(struct xdr_stream *xdr, const struct nfs_setattrargs *arg, const struct nfs_server *server, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 4+NFS4_STATEID_SIZE);
 *p++ = cpu_to_be32(OP_SETATTR);
 xdr_encode_opaque_fixed(p, arg->stateid.data, NFS4_STATEID_SIZE);
 hdr->nops++;
 hdr->replen += decode_setattr_maxsz;
 encode_attrs(xdr, arg->iap, server);
}
