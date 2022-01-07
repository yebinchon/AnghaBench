
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_rqst {int dummy; } ;
struct TYPE_2__ {int mnt; } ;
struct svc_export {TYPE_1__ ex_path; } ;
struct path {struct dentry* dentry; int mnt; } ;
struct dentry {int dummy; } ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct svc_export*) ;
 int PTR_ERR (struct svc_export*) ;
 struct dentry* dget (struct dentry*) ;
 int exp_put (struct svc_export*) ;
 int follow_to_parent (struct path*) ;
 int mntget (int ) ;
 int path_put (struct path*) ;
 struct svc_export* rqst_exp_parent (struct svc_rqst*,struct path*) ;

__attribute__((used)) static int nfsd_lookup_parent(struct svc_rqst *rqstp, struct dentry *dparent, struct svc_export **exp, struct dentry **dentryp)
{
 struct svc_export *exp2;
 struct path path = {.mnt = mntget((*exp)->ex_path.mnt),
       .dentry = dget(dparent)};

 follow_to_parent(&path);

 exp2 = rqst_exp_parent(rqstp, &path);
 if (PTR_ERR(exp2) == -ENOENT) {
  *dentryp = dget(dparent);
 } else if (IS_ERR(exp2)) {
  path_put(&path);
  return PTR_ERR(exp2);
 } else {
  *dentryp = dget(path.dentry);
  exp_put(*exp);
  *exp = exp2;
 }
 path_put(&path);
 return 0;
}
