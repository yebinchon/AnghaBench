
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_rcv_buf; } ;
struct nfs4_statfs_res {int fsstat; int seq_res; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;


 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_putfh (struct xdr_stream*) ;
 int decode_sequence (struct xdr_stream*,int *,struct rpc_rqst*) ;
 int decode_statfs (struct xdr_stream*,int ) ;
 int xdr_init_decode (struct xdr_stream*,int *,int *) ;

__attribute__((used)) static int nfs4_xdr_dec_statfs(struct rpc_rqst *req, __be32 *p,
          struct nfs4_statfs_res *res)
{
 struct xdr_stream xdr;
 struct compound_hdr hdr;
 int status;

 xdr_init_decode(&xdr, &req->rq_rcv_buf, p);
 status = decode_compound_hdr(&xdr, &hdr);
 if (!status)
  status = decode_sequence(&xdr, &res->seq_res, req);
 if (!status)
  status = decode_putfh(&xdr);
 if (!status)
  status = decode_statfs(&xdr, res->fsstat);
 return status;
}
