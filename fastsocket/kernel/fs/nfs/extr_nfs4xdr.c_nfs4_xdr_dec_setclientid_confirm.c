
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_rcv_buf; } ;
struct nfs_fsinfo {int dummy; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;


 int decode_compound_hdr (struct xdr_stream*,struct compound_hdr*) ;
 int decode_fsinfo (struct xdr_stream*,struct nfs_fsinfo*) ;
 int decode_putrootfh (struct xdr_stream*) ;
 int decode_setclientid_confirm (struct xdr_stream*) ;
 int xdr_init_decode (struct xdr_stream*,int *,int *) ;

__attribute__((used)) static int nfs4_xdr_dec_setclientid_confirm(struct rpc_rqst *req, __be32 *p, struct nfs_fsinfo *fsinfo)
{
 struct xdr_stream xdr;
 struct compound_hdr hdr;
 int status;

 xdr_init_decode(&xdr, &req->rq_rcv_buf, p);
 status = decode_compound_hdr(&xdr, &hdr);
 if (!status)
  status = decode_setclientid_confirm(&xdr);
 if (!status)
  status = decode_putrootfh(&xdr);
 if (!status)
  status = decode_fsinfo(&xdr, fsinfo);
 return status;
}
