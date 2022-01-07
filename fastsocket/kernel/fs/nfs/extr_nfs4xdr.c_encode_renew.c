
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_client {int cl_clientid; } ;
struct compound_hdr {int replen; int nops; } ;
typedef int __be32 ;


 int OP_RENEW ;
 int cpu_to_be32 (int ) ;
 scalar_t__ decode_renew_maxsz ;
 int * reserve_space (struct xdr_stream*,int) ;
 int xdr_encode_hyper (int *,int ) ;

__attribute__((used)) static void encode_renew(struct xdr_stream *xdr, const struct nfs_client *client_stateid, struct compound_hdr *hdr)
{
 __be32 *p;

 p = reserve_space(xdr, 12);
 *p++ = cpu_to_be32(OP_RENEW);
 xdr_encode_hyper(p, client_stateid->cl_clientid);
 hdr->nops++;
 hdr->replen += decode_renew_maxsz;
}
