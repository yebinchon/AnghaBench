
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nlm_args {int dummy; } ;
typedef int __be32 ;


 int NLMPROC_TEST_RES ;
 int dprintk (char*) ;
 int nlm4svc_callback (struct svc_rqst*,int ,struct nlm_args*,int ) ;
 int nlm4svc_proc_test ;

__attribute__((used)) static __be32 nlm4svc_proc_test_msg(struct svc_rqst *rqstp, struct nlm_args *argp,
          void *resp)
{
 dprintk("lockd: TEST_MSG      called\n");
 return nlm4svc_callback(rqstp, NLMPROC_TEST_RES, argp, nlm4svc_proc_test);
}
