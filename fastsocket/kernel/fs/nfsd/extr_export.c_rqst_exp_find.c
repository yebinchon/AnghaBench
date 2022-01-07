
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct svc_rqst {int rq_chandle; int * rq_gssclient; int * rq_client; } ;
struct svc_export {scalar_t__ ex_nflavors; } ;


 int ENOENT ;
 struct svc_export* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct svc_export*) ;
 int PTR_ERR (struct svc_export*) ;
 struct svc_export* exp_find (int *,int,int *,int *) ;
 int exp_put (struct svc_export*) ;

struct svc_export *
rqst_exp_find(struct svc_rqst *rqstp, int fsid_type, u32 *fsidv)
{
 struct svc_export *gssexp, *exp = ERR_PTR(-ENOENT);

 if (rqstp->rq_client == ((void*)0))
  goto gss;


 exp = exp_find(rqstp->rq_client, fsid_type, fsidv, &rqstp->rq_chandle);
 if (PTR_ERR(exp) == -ENOENT)
  goto gss;
 if (IS_ERR(exp))
  return exp;

 if (exp->ex_nflavors > 0)
  return exp;
gss:

 if (rqstp->rq_gssclient == ((void*)0))
  return exp;
 gssexp = exp_find(rqstp->rq_gssclient, fsid_type, fsidv,
      &rqstp->rq_chandle);
 if (PTR_ERR(gssexp) == -ENOENT)
  return exp;
 if (!IS_ERR(exp))
  exp_put(exp);
 return gssexp;
}
