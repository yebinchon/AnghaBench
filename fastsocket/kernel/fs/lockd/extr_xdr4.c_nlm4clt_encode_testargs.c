
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_rqst {int rq_svec; int rq_slen; } ;
struct TYPE_4__ {scalar_t__ fl_type; } ;
struct nlm_lock {TYPE_1__ fl; } ;
struct TYPE_5__ {int cookie; struct nlm_lock lock; } ;
typedef TYPE_2__ nlm_args ;
typedef int __be32 ;


 int EIO ;
 scalar_t__ F_WRLCK ;
 int * nlm4_encode_cookie (int *,int *) ;
 int * nlm4_encode_lock (int *,struct nlm_lock*) ;
 int xdr_adjust_iovec (int ,int *) ;
 int xdr_one ;
 int xdr_zero ;

__attribute__((used)) static int
nlm4clt_encode_testargs(struct rpc_rqst *req, __be32 *p, nlm_args *argp)
{
 struct nlm_lock *lock = &argp->lock;

 if (!(p = nlm4_encode_cookie(p, &argp->cookie)))
  return -EIO;
 *p++ = (lock->fl.fl_type == F_WRLCK)? xdr_one : xdr_zero;
 if (!(p = nlm4_encode_lock(p, lock)))
  return -EIO;
 req->rq_slen = xdr_adjust_iovec(req->rq_svec, p);
 return 0;
}
