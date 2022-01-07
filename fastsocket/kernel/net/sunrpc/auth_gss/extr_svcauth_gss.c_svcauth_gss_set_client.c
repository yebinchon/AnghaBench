
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int * rq_gssclient; struct gss_svc_data* rq_auth_data; } ;
struct rsc {int mechctx; } ;
struct rpc_gss_wire_cred {int gc_svc; } ;
struct gss_svc_data {struct rpc_gss_wire_cred clcred; struct rsc* rsci; } ;


 int SVC_CLOSE ;
 int SVC_DENIED ;
 int SVC_DROP ;
 int SVC_OK ;
 int * find_gss_auth_domain (int ,int ) ;
 int svcauth_unix_set_client (struct svc_rqst*) ;

__attribute__((used)) static int
svcauth_gss_set_client(struct svc_rqst *rqstp)
{
 struct gss_svc_data *svcdata = rqstp->rq_auth_data;
 struct rsc *rsci = svcdata->rsci;
 struct rpc_gss_wire_cred *gc = &svcdata->clcred;
 int stat;
 rqstp->rq_gssclient = find_gss_auth_domain(rsci->mechctx, gc->gc_svc);
 if (rqstp->rq_gssclient == ((void*)0))
  return SVC_DENIED;
 stat = svcauth_unix_set_client(rqstp);
 if (stat == SVC_DROP || stat == SVC_CLOSE)
  return stat;
 return SVC_OK;
}
