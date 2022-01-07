
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct rpc_rqst {int rq_snd_buf; } ;
typedef int __be32 ;


 int encode_mntdirpath (struct xdr_stream*,char const*) ;
 int xdr_init_encode (struct xdr_stream*,int *,int *) ;

__attribute__((used)) static int mnt_enc_dirpath(struct rpc_rqst *req, __be32 *p,
      const char *dirpath)
{
 struct xdr_stream xdr;

 xdr_init_encode(&xdr, &req->rq_snd_buf, p);
 return encode_mntdirpath(&xdr, dirpath);
}
