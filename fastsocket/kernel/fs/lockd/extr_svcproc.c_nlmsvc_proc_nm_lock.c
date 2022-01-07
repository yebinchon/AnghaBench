
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nlm_res {int dummy; } ;
struct nlm_args {scalar_t__ monitor; } ;
typedef int __be32 ;


 int dprintk (char*) ;
 int nlmsvc_proc_lock (struct svc_rqst*,struct nlm_args*,struct nlm_res*) ;

__attribute__((used)) static __be32
nlmsvc_proc_nm_lock(struct svc_rqst *rqstp, struct nlm_args *argp,
                struct nlm_res *resp)
{
 dprintk("lockd: NM_LOCK       called\n");

 argp->monitor = 0;
 return nlmsvc_proc_lock(rqstp, argp, resp);
}
