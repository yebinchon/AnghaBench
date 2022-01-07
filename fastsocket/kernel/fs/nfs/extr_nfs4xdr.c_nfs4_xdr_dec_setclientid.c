
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_rcv_buf; } ;
struct nfs4_setclientid_res {int dummy; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;


 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_setclientid (struct xdr_stream*,struct nfs4_setclientid_res*) ;
 int xdr_init_decode (struct xdr_stream*,int *,int *) ;

__attribute__((used)) static int nfs4_xdr_dec_setclientid(struct rpc_rqst *req, __be32 *p,
  struct nfs4_setclientid_res *res)
{
 struct xdr_stream xdr;
 struct compound_hdr hdr;
 int status;

 xdr_init_decode(&xdr, &req->rq_rcv_buf, p);
 status = decode_compound_hdr(&xdr, &hdr);
 if (!status)
  status = decode_setclientid(&xdr, res);
 return status;
}
