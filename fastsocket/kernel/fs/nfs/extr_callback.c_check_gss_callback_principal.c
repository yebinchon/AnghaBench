
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {TYPE_1__* rq_authop; } ;
struct rpc_clnt {int cl_server; } ;
struct nfs_client {scalar_t__ cl_minorversion; struct rpc_clnt* cl_rpcclient; } ;
struct TYPE_2__ {scalar_t__ flavour; } ;


 scalar_t__ RPC_AUTH_GSS ;
 scalar_t__ memcmp (char*,char*,int) ;
 scalar_t__ strcmp (char*,int ) ;
 char* svc_gss_principal (struct svc_rqst*) ;

int
check_gss_callback_principal(struct nfs_client *clp, struct svc_rqst *rqstp)
{
 struct rpc_clnt *r = clp->cl_rpcclient;
 char *p = svc_gss_principal(rqstp);

 if (rqstp->rq_authop->flavour != RPC_AUTH_GSS)
  return 1;


 if (clp->cl_minorversion != 0)
  return 0;




 if (p == ((void*)0))
  return 0;



 if (memcmp(p, "nfs@", 4) != 0)
  return 0;
 p += 4;
 if (strcmp(p, r->cl_server) != 0)
  return 0;
 return 1;
}
