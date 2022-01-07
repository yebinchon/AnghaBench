
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct nlm_res {int status; int cookie; int lock; } ;
struct nlm_host {int dummy; } ;
struct nlm_file {int dummy; } ;
struct nlm_args {int lock; int cookie; } ;
typedef int __be32 ;


 int dprintk (char*,...) ;
 int nlm4svc_retrieve_args (struct svc_rqst*,struct nlm_args*,struct nlm_host**,struct nlm_file**) ;
 int nlm_drop_reply ;
 int nlm_release_file (struct nlm_file*) ;
 int nlm_release_host (struct nlm_host*) ;
 int nlmsvc_testlock (struct svc_rqst*,struct nlm_file*,struct nlm_host*,int *,int *,int *) ;
 int ntohl (int ) ;
 int rpc_drop_reply ;
 int rpc_success ;

__attribute__((used)) static __be32
nlm4svc_proc_test(struct svc_rqst *rqstp, struct nlm_args *argp,
             struct nlm_res *resp)
{
 struct nlm_host *host;
 struct nlm_file *file;
 __be32 rc = rpc_success;

 dprintk("lockd: TEST4        called\n");
 resp->cookie = argp->cookie;


 if ((resp->status = nlm4svc_retrieve_args(rqstp, argp, &host, &file)))
  return resp->status == nlm_drop_reply ? rpc_drop_reply :rpc_success;


 resp->status = nlmsvc_testlock(rqstp, file, host, &argp->lock, &resp->lock, &resp->cookie);
 if (resp->status == nlm_drop_reply)
  rc = rpc_drop_reply;
 else
  dprintk("lockd: TEST4        status %d\n", ntohl(resp->status));

 nlm_release_host(host);
 nlm_release_file(file);
 return rc;
}
