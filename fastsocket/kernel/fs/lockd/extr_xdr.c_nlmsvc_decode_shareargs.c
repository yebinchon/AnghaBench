
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct svc_rqst {int dummy; } ;
struct TYPE_5__ {scalar_t__ fl_pid; } ;
struct nlm_lock {int oh; int fh; int len; int caller; scalar_t__ svid; TYPE_3__ fl; } ;
typedef scalar_t__ pid_t ;
struct TYPE_4__ {void* fsm_access; void* fsm_mode; int cookie; struct nlm_lock lock; } ;
typedef TYPE_1__ nlm_args ;
typedef int __be32 ;


 int NLM_MAXSTRLEN ;
 int locks_init_lock (TYPE_3__*) ;
 int memset (struct nlm_lock*,int ,int) ;
 int * nlm_decode_cookie (int *,int *) ;
 int * nlm_decode_fh (int *,int *) ;
 int * nlm_decode_oh (int *,int *) ;
 void* ntohl (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;
 int * xdr_decode_string_inplace (int *,int *,int *,int ) ;

int
nlmsvc_decode_shareargs(struct svc_rqst *rqstp, __be32 *p, nlm_args *argp)
{
 struct nlm_lock *lock = &argp->lock;

 memset(lock, 0, sizeof(*lock));
 locks_init_lock(&lock->fl);
 lock->svid = ~(u32) 0;
 lock->fl.fl_pid = (pid_t)lock->svid;

 if (!(p = nlm_decode_cookie(p, &argp->cookie))
  || !(p = xdr_decode_string_inplace(p, &lock->caller,
         &lock->len, NLM_MAXSTRLEN))
  || !(p = nlm_decode_fh(p, &lock->fh))
  || !(p = nlm_decode_oh(p, &lock->oh)))
  return 0;
 argp->fsm_mode = ntohl(*p++);
 argp->fsm_access = ntohl(*p++);
 return xdr_argsize_check(rqstp, p);
}
