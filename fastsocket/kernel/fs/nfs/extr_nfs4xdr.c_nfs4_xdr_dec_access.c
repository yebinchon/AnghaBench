
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_rcv_buf; } ;
struct nfs4_accessres {int server; int fattr; int access; int supported; int seq_res; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;


 int decode_access (struct xdr_stream*,int *,int *) ;
 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_getfattr (struct xdr_stream*,int ,int ) ;
 int decode_putfh (struct xdr_stream*) ;
 int decode_sequence (struct xdr_stream*,int *,struct rpc_rqst*) ;
 int xdr_init_decode (struct xdr_stream*,int *,int *) ;

__attribute__((used)) static int nfs4_xdr_dec_access(struct rpc_rqst *rqstp, __be32 *p, struct nfs4_accessres *res)
{
 struct xdr_stream xdr;
 struct compound_hdr hdr;
 int status;

 xdr_init_decode(&xdr, &rqstp->rq_rcv_buf, p);
 status = decode_compound_hdr(&xdr, &hdr);
 if (status)
  goto out;
 status = decode_sequence(&xdr, &res->seq_res, rqstp);
 if (status)
  goto out;
 status = decode_putfh(&xdr);
 if (status != 0)
  goto out;
 status = decode_access(&xdr, &res->supported, &res->access);
 if (status != 0)
  goto out;
 decode_getfattr(&xdr, res->fattr, res->server);
out:
 return status;
}
