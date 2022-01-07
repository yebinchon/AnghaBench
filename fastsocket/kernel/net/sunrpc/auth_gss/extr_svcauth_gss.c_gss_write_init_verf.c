
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_rqst {int dummy; } ;
struct rsi {scalar_t__ major_status; int out_handle; } ;
struct rsc {int h; int mechctx; } ;


 int GSS_SEQ_WIN ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_NO_CONTEXT ;
 int cache_put (int *,int *) ;
 struct rsc* gss_svc_searchbyctx (int *) ;
 int gss_write_null_verf (struct svc_rqst*) ;
 int gss_write_verf (struct svc_rqst*,int ,int ) ;
 int rsc_cache ;

__attribute__((used)) static inline int
gss_write_init_verf(struct svc_rqst *rqstp, struct rsi *rsip)
{
 struct rsc *rsci;
 int rc;

 if (rsip->major_status != GSS_S_COMPLETE)
  return gss_write_null_verf(rqstp);
 rsci = gss_svc_searchbyctx(&rsip->out_handle);
 if (rsci == ((void*)0)) {
  rsip->major_status = GSS_S_NO_CONTEXT;
  return gss_write_null_verf(rqstp);
 }
 rc = gss_write_verf(rqstp, rsci->mechctx, GSS_SEQ_WIN);
 cache_put(&rsci->h, &rsc_cache);
 return rc;
}
