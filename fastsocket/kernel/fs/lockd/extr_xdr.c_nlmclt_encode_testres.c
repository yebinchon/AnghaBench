
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rqst {int rq_svec; int rq_slen; } ;
struct nlm_res {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 int * nlm_encode_testres (int *,struct nlm_res*) ;
 int xdr_adjust_iovec (int ,int *) ;

__attribute__((used)) static int
nlmclt_encode_testres(struct rpc_rqst *req, __be32 *p, struct nlm_res *resp)
{
 if (!(p = nlm_encode_testres(p, resp)))
  return -EIO;
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);
 return 0;
}
