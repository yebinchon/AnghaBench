
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_rqst {int rq_svec; int rq_slen; } ;
struct nlm_lock {int dummy; } ;
struct TYPE_3__ {int cookie; struct nlm_lock lock; } ;
typedef TYPE_1__ nlm_args ;
typedef int __be32 ;


 int EIO ;
 int * nlm_encode_cookie (int *,int *) ;
 int * nlm_encode_lock (int *,struct nlm_lock*) ;
 int xdr_adjust_iovec (int ,int *) ;

__attribute__((used)) static int
nlmclt_encode_unlockargs(struct rpc_rqst *req, __be32 *p, nlm_args *argp)
{
 struct nlm_lock *lock = &argp->lock;

 if (!(p = nlm_encode_cookie(p, &argp->cookie)))
  return -EIO;
 if (!(p = nlm_encode_lock(p, lock)))
  return -EIO;
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);
 return 0;
}
