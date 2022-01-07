
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_buf {int len; } ;
struct TYPE_3__ {int * cr_group_info; } ;
struct svc_rqst {TYPE_1__ rq_cred; int * rq_gssclient; int * rq_client; struct xdr_buf rq_res; scalar_t__ rq_auth_data; } ;
struct rpc_gss_wire_cred {scalar_t__ gc_proc; int gc_svc; } ;
struct gss_svc_data {TYPE_2__* rsci; int * verf_start; struct rpc_gss_wire_cred clcred; } ;
struct TYPE_4__ {int h; } ;


 int EINVAL ;
 scalar_t__ RPC_GSS_PROC_DATA ;



 int auth_domain_put (int *) ;
 int cache_put (int *,int *) ;
 int put_group_info (int *) ;
 int rsc_cache ;
 int svcauth_gss_wrap_resp_integ (struct svc_rqst*) ;
 int svcauth_gss_wrap_resp_priv (struct svc_rqst*) ;
 int total_buf_len (struct xdr_buf*) ;

__attribute__((used)) static int
svcauth_gss_release(struct svc_rqst *rqstp)
{
 struct gss_svc_data *gsd = (struct gss_svc_data *)rqstp->rq_auth_data;
 struct rpc_gss_wire_cred *gc = &gsd->clcred;
 struct xdr_buf *resbuf = &rqstp->rq_res;
 int stat = -EINVAL;

 if (gc->gc_proc != RPC_GSS_PROC_DATA)
  goto out;

 if (gsd->verf_start == ((void*)0))
  goto out;



 resbuf->len = total_buf_len(resbuf);
 switch (gc->gc_svc) {
 case 129:
  break;
 case 130:
  stat = svcauth_gss_wrap_resp_integ(rqstp);
  if (stat)
   goto out_err;
  break;
 case 128:
  stat = svcauth_gss_wrap_resp_priv(rqstp);
  if (stat)
   goto out_err;
  break;




 }

out:
 stat = 0;
out_err:
 if (rqstp->rq_client)
  auth_domain_put(rqstp->rq_client);
 rqstp->rq_client = ((void*)0);
 if (rqstp->rq_gssclient)
  auth_domain_put(rqstp->rq_gssclient);
 rqstp->rq_gssclient = ((void*)0);
 if (rqstp->rq_cred.cr_group_info)
  put_group_info(rqstp->rq_cred.cr_group_info);
 rqstp->rq_cred.cr_group_info = ((void*)0);
 if (gsd->rsci)
  cache_put(&gsd->rsci->h, &rsc_cache);
 gsd->rsci = ((void*)0);

 return stat;
}
