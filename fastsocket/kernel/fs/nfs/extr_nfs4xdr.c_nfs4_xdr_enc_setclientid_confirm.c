
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_snd_buf; } ;
struct nfs4_setclientid_res {int dummy; } ;
struct compound_hdr {int nops; } ;
typedef int __be32 ;


 int const FATTR4_WORD0_LEASE_TIME ;
 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_fsinfo (struct xdr_stream*,int const*,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_putrootfh (struct xdr_stream*,struct compound_hdr*) ;
 int encode_setclientid_confirm (struct xdr_stream*,struct nfs4_setclientid_res*,struct compound_hdr*) ;
 int xdr_init_encode (struct xdr_stream*,int *,int *) ;

__attribute__((used)) static int nfs4_xdr_enc_setclientid_confirm(struct rpc_rqst *req, __be32 *p, struct nfs4_setclientid_res *arg)
{
 struct xdr_stream xdr;
 struct compound_hdr hdr = {
  .nops = 0,
 };
 const u32 lease_bitmap[2] = { FATTR4_WORD0_LEASE_TIME, 0 };

 xdr_init_encode(&xdr, &req->rq_snd_buf, p);
 encode_compound_hdr(&xdr, req, &hdr);
 encode_setclientid_confirm(&xdr, arg, &hdr);
 encode_putrootfh(&xdr, &hdr);
 encode_fsinfo(&xdr, lease_bitmap, &hdr);
 encode_nops(&hdr);
 return 0;
}
