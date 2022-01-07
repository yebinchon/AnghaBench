
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_rcv_buf; } ;
struct nfs4_link_res {int server; int fattr; int cinfo; int seq_res; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;


 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_getfattr (struct xdr_stream*,int ,int ) ;
 int decode_link (struct xdr_stream*,int *) ;
 int decode_putfh (struct xdr_stream*) ;
 int decode_restorefh (struct xdr_stream*) ;
 int decode_savefh (struct xdr_stream*) ;
 int decode_sequence (struct xdr_stream*,int *,struct rpc_rqst*) ;
 int xdr_init_decode (struct xdr_stream*,int *,int *) ;

__attribute__((used)) static int nfs4_xdr_dec_link(struct rpc_rqst *rqstp, __be32 *p, struct nfs4_link_res *res)
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
 if ((status = decode_putfh(&xdr)) != 0)
  goto out;
 if ((status = decode_savefh(&xdr)) != 0)
  goto out;
 if ((status = decode_putfh(&xdr)) != 0)
  goto out;
 if ((status = decode_link(&xdr, &res->cinfo)) != 0)
  goto out;




 status = decode_restorefh(&xdr);
 if (status)
  goto out;
 decode_getfattr(&xdr, res->fattr, res->server);
out:
 return status;
}
