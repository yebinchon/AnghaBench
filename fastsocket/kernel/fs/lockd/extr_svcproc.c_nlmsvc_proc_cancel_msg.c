
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nlm_args {int dummy; } ;
typedef int __be32 ;


 int NLMPROC_CANCEL_RES ;
 int dprintk (char*) ;
 int nlmsvc_callback (struct svc_rqst*,int ,struct nlm_args*,int ) ;
 int nlmsvc_proc_cancel ;

__attribute__((used)) static __be32 nlmsvc_proc_cancel_msg(struct svc_rqst *rqstp, struct nlm_args *argp,
            void *resp)
{
 dprintk("lockd: CANCEL_MSG    called\n");
 return nlmsvc_callback(rqstp, NLMPROC_CANCEL_RES, argp, nlmsvc_proc_cancel);
}
