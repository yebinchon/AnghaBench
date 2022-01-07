
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct TYPE_5__ {int fl_type; } ;
struct TYPE_7__ {TYPE_1__ fl; } ;
struct TYPE_6__ {TYPE_4__ lock; int cookie; } ;
typedef TYPE_2__ nlm_args ;
typedef int __be32 ;


 int F_UNLCK ;
 int * nlm4_decode_cookie (int *,int *) ;
 int * nlm4_decode_lock (int *,TYPE_4__*) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nlm4svc_decode_unlockargs(struct svc_rqst *rqstp, __be32 *p, nlm_args *argp)
{
 if (!(p = nlm4_decode_cookie(p, &argp->cookie))
  || !(p = nlm4_decode_lock(p, &argp->lock)))
  return 0;
 argp->lock.fl.fl_type = F_UNLCK;
 return xdr_argsize_check(rqstp, p);
}
