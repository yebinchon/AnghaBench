
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_snd_buf; } ;
struct nsm_args {int dummy; } ;
typedef int __be32 ;


 int encode_mon_id (struct xdr_stream*,struct nsm_args const*) ;
 int xdr_init_encode (struct xdr_stream*,int *,int *) ;

__attribute__((used)) static int xdr_enc_unmon(struct rpc_rqst *req, __be32 *p,
    const struct nsm_args *argp)
{
 struct xdr_stream xdr;

 xdr_init_encode(&xdr, &req->rq_snd_buf, p);
 return encode_mon_id(&xdr, argp);
}
