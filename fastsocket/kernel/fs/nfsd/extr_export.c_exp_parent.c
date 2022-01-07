
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_export {int dummy; } ;
typedef struct svc_export svc_export ;
typedef int svc_client ;
struct path {struct dentry* dentry; } ;
struct dentry {int dummy; } ;


 int ENOENT ;
 int IS_ROOT (struct dentry*) ;
 int PTR_ERR (struct svc_export*) ;
 struct dentry* dget (struct dentry*) ;
 struct dentry* dget_parent (struct dentry*) ;
 int dput (struct dentry*) ;
 struct svc_export* exp_get_by_name (int *,struct path*,int *) ;

__attribute__((used)) static struct svc_export *exp_parent(svc_client *clp, struct path *path)
{
 struct dentry *saved = dget(path->dentry);
 svc_export *exp = exp_get_by_name(clp, path, ((void*)0));

 while (PTR_ERR(exp) == -ENOENT && !IS_ROOT(path->dentry)) {
  struct dentry *parent = dget_parent(path->dentry);
  dput(path->dentry);
  path->dentry = parent;
  exp = exp_get_by_name(clp, path, ((void*)0));
 }
 dput(path->dentry);
 path->dentry = saved;
 return exp;
}
