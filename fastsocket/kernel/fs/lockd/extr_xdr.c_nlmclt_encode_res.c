
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_svec; int rq_slen; } ;
struct nlm_res {int status; int cookie; } ;
typedef int __be32 ;


 int EIO ;
 int * nlm_encode_cookie (int *,int *) ;
 int xdr_adjust_iovec (int ,int *) ;

__attribute__((used)) static int
nlmclt_encode_res(struct rpc_rqst *req, __be32 *p, struct nlm_res *resp)
{
 if (!(p = nlm_encode_cookie(p, &resp->cookie)))
  return -EIO;
 *p++ = resp->status;
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);
 return 0;
}
