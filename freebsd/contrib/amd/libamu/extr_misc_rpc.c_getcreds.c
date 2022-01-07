
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
typedef int u_long ;
struct TYPE_4__ {int oa_flavor; } ;
struct svc_req {scalar_t__ rq_clntcred; TYPE_2__ rq_cred; } ;
struct authunix_parms {int aup_gid; int aup_uid; } ;
struct TYPE_3__ {int name; } ;
struct authdes_cred {TYPE_1__ adc_fullname; } ;
typedef int gid_t ;
typedef int SVCXPRT ;




 int INVALIDID ;
 int sscanf (int ,char*,int *) ;
 int svcerr_weakauth (int *) ;

int
getcreds(struct svc_req *rp, uid_t *u, gid_t *g, SVCXPRT *nfsxprt)
{
  struct authunix_parms *aup = (struct authunix_parms *) ((void*)0);




  switch (rp->rq_cred.oa_flavor) {

  case 128:
    aup = (struct authunix_parms *) rp->rq_clntcred;
    *u = aup->aup_uid;
    *g = aup->aup_gid;
    break;
  default:
    *u = *g = INVALIDID;
    svcerr_weakauth(nfsxprt);
    return -1;
  }

  return 0;
}
