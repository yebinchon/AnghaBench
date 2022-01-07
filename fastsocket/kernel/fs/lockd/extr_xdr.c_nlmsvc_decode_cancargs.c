
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u32 ;
struct svc_rqst {int dummy; } ;
struct TYPE_5__ {int fl_type; } ;
struct TYPE_7__ {TYPE_1__ fl; } ;
struct TYPE_6__ {TYPE_4__ lock; void* block; int cookie; } ;
typedef TYPE_2__ nlm_args ;
typedef int __be32 ;


 int F_WRLCK ;
 int * nlm_decode_cookie (int *,int *) ;
 int * nlm_decode_lock (int *,TYPE_4__*) ;
 void* ntohl (int ) ;
 int xdr_argsize_check (struct svc_rqst*,int *) ;

int
nlmsvc_decode_cancargs(struct svc_rqst *rqstp, __be32 *p, nlm_args *argp)
{
 u32 exclusive;

 if (!(p = nlm_decode_cookie(p, &argp->cookie)))
  return 0;
 argp->block = ntohl(*p++);
 exclusive = ntohl(*p++);
 if (!(p = nlm_decode_lock(p, &argp->lock)))
  return 0;
 if (exclusive)
  argp->lock.fl.fl_type = F_WRLCK;
 return xdr_argsize_check(rqstp, p);
}
