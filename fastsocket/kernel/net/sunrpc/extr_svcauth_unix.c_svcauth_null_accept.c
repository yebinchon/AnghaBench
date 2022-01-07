
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct svc_cred {int * cr_group_info; scalar_t__ cr_gid; scalar_t__ cr_uid; } ;
struct TYPE_4__ {struct kvec* head; } ;
struct TYPE_3__ {struct kvec* head; } ;
struct svc_rqst {int rq_flavor; int * rq_client; struct svc_cred rq_cred; TYPE_2__ rq_res; TYPE_1__ rq_arg; } ;
struct kvec {int iov_len; } ;
typedef scalar_t__ gid_t ;
typedef int __be32 ;


 int RPC_AUTH_NULL ;
 int SVC_CLOSE ;
 int SVC_DENIED ;
 int SVC_GARBAGE ;
 int SVC_OK ;
 int dprintk (char*) ;
 int * groups_alloc (int ) ;
 scalar_t__ htonl (int ) ;
 int rpc_autherr_badcred ;
 int rpc_autherr_badverf ;
 scalar_t__ svc_getu32 (struct kvec*) ;
 int svc_putnl (struct kvec*,int ) ;

__attribute__((used)) static int
svcauth_null_accept(struct svc_rqst *rqstp, __be32 *authp)
{
 struct kvec *argv = &rqstp->rq_arg.head[0];
 struct kvec *resv = &rqstp->rq_res.head[0];
 struct svc_cred *cred = &rqstp->rq_cred;

 cred->cr_group_info = ((void*)0);
 rqstp->rq_client = ((void*)0);

 if (argv->iov_len < 3*4)
  return SVC_GARBAGE;

 if (svc_getu32(argv) != 0) {
  dprintk("svc: bad null cred\n");
  *authp = rpc_autherr_badcred;
  return SVC_DENIED;
 }
 if (svc_getu32(argv) != htonl(RPC_AUTH_NULL) || svc_getu32(argv) != 0) {
  dprintk("svc: bad null verf\n");
  *authp = rpc_autherr_badverf;
  return SVC_DENIED;
 }


 cred->cr_uid = (uid_t) -1;
 cred->cr_gid = (gid_t) -1;
 cred->cr_group_info = groups_alloc(0);
 if (cred->cr_group_info == ((void*)0))
  return SVC_CLOSE;


 svc_putnl(resv, RPC_AUTH_NULL);
 svc_putnl(resv, 0);

 rqstp->rq_flavor = RPC_AUTH_NULL;
 return SVC_OK;
}
