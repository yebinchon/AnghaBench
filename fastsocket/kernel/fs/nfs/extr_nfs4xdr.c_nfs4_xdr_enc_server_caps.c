
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_snd_buf; } ;
struct nfs4_server_caps_arg {int fhandle; int seq_args; } ;
struct compound_hdr {int minorversion; } ;
typedef int __be32 ;


 int FATTR4_WORD0_ACLSUPPORT ;
 int FATTR4_WORD0_LINK_SUPPORT ;
 int FATTR4_WORD0_SUPPORTED_ATTRS ;
 int FATTR4_WORD0_SYMLINK_SUPPORT ;
 int encode_compound_hdr (struct xdr_stream*,struct rpc_rqst*,struct compound_hdr*) ;
 int encode_getattr_one (struct xdr_stream*,int,struct compound_hdr*) ;
 int encode_nops (struct compound_hdr*) ;
 int encode_putfh (struct xdr_stream*,int ,struct compound_hdr*) ;
 int encode_sequence (struct xdr_stream*,int *,struct compound_hdr*) ;
 int nfs4_xdr_minorversion (int *) ;
 int xdr_init_encode (struct xdr_stream*,int *,int *) ;

__attribute__((used)) static int nfs4_xdr_enc_server_caps(struct rpc_rqst *req, __be32 *p,
        struct nfs4_server_caps_arg *args)
{
 struct xdr_stream xdr;
 struct compound_hdr hdr = {
  .minorversion = nfs4_xdr_minorversion(&args->seq_args),
 };

 xdr_init_encode(&xdr, &req->rq_snd_buf, p);
 encode_compound_hdr(&xdr, req, &hdr);
 encode_sequence(&xdr, &args->seq_args, &hdr);
 encode_putfh(&xdr, args->fhandle, &hdr);
 encode_getattr_one(&xdr, FATTR4_WORD0_SUPPORTED_ATTRS|
      FATTR4_WORD0_LINK_SUPPORT|
      FATTR4_WORD0_SYMLINK_SUPPORT|
      FATTR4_WORD0_ACLSUPPORT, &hdr);
 encode_nops(&hdr);
 return 0;
}
