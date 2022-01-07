
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_rcv_buf; } ;
struct nfs_open_confirmres {int dummy; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;


 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_open_confirm (struct xdr_stream*,struct nfs_open_confirmres*) ;
 int decode_putfh (struct xdr_stream*) ;
 int xdr_init_decode (struct xdr_stream*,int *,int *) ;

__attribute__((used)) static int nfs4_xdr_dec_open_confirm(struct rpc_rqst *rqstp, __be32 *p, struct nfs_open_confirmres *res)
{
 struct xdr_stream xdr;
 struct compound_hdr hdr;
 int status;

 xdr_init_decode(&xdr, &rqstp->rq_rcv_buf, p);
 status = decode_compound_hdr(&xdr, &hdr);
 if (status)
  goto out;
 status = decode_putfh(&xdr);
 if (status)
  goto out;
 status = decode_open_confirm(&xdr, res);
out:
 return status;
}
