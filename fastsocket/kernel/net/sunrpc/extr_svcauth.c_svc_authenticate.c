
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * head; } ;
struct svc_rqst {struct auth_ops* rq_authop; TYPE_1__ rq_arg; } ;
struct auth_ops {int (* accept ) (struct svc_rqst*,int *) ;int owner; } ;
typedef size_t rpc_authflavor_t ;
typedef int __be32 ;


 size_t RPC_AUTH_MAXFLAVOR ;
 int SVC_DENIED ;
 struct auth_ops** authtab ;
 int authtab_lock ;
 int dprintk (char*,size_t) ;
 int rpc_auth_ok ;
 int rpc_autherr_badcred ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct svc_rqst*,int *) ;
 size_t svc_getnl (int *) ;
 int try_module_get (int ) ;

int
svc_authenticate(struct svc_rqst *rqstp, __be32 *authp)
{
 rpc_authflavor_t flavor;
 struct auth_ops *aops;

 *authp = rpc_auth_ok;

 flavor = svc_getnl(&rqstp->rq_arg.head[0]);

 dprintk("svc: svc_authenticate (%d)\n", flavor);

 spin_lock(&authtab_lock);
 if (flavor >= RPC_AUTH_MAXFLAVOR || !(aops = authtab[flavor])
   || !try_module_get(aops->owner)) {
  spin_unlock(&authtab_lock);
  *authp = rpc_autherr_badcred;
  return SVC_DENIED;
 }
 spin_unlock(&authtab_lock);

 rqstp->rq_authop = aops;
 return aops->accept(rqstp, authp);
}
