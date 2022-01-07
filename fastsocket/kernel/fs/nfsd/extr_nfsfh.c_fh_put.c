
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_fh {struct svc_export* fh_export; scalar_t__ fh_post_saved; scalar_t__ fh_pre_saved; struct dentry* fh_dentry; } ;
struct svc_export {int h; } ;
struct dentry {int dummy; } ;


 int cache_put (int *,int *) ;
 int dput (struct dentry*) ;
 int fh_drop_write (struct svc_fh*) ;
 int fh_unlock (struct svc_fh*) ;
 int svc_export_cache ;

void
fh_put(struct svc_fh *fhp)
{
 struct dentry * dentry = fhp->fh_dentry;
 struct svc_export * exp = fhp->fh_export;
 if (dentry) {
  fh_unlock(fhp);
  fhp->fh_dentry = ((void*)0);
  dput(dentry);




 }
 fh_drop_write(fhp);
 if (exp) {
  cache_put(&exp->h, &svc_export_cache);
  fhp->fh_export = ((void*)0);
 }
 return;
}
