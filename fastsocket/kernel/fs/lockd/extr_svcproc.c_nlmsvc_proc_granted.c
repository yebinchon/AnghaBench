
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nlm_res {int status; int cookie; } ;
struct nlm_args {int lock; int cookie; } ;
typedef int __be32 ;


 int dprintk (char*,...) ;
 int nlmclnt_grant (int ,int *) ;
 int ntohl (int ) ;
 int rpc_success ;
 int svc_addr (struct svc_rqst*) ;

__attribute__((used)) static __be32
nlmsvc_proc_granted(struct svc_rqst *rqstp, struct nlm_args *argp,
                struct nlm_res *resp)
{
 resp->cookie = argp->cookie;

 dprintk("lockd: GRANTED       called\n");
 resp->status = nlmclnt_grant(svc_addr(rqstp), &argp->lock);
 dprintk("lockd: GRANTED       status %d\n", ntohl(resp->status));
 return rpc_success;
}
