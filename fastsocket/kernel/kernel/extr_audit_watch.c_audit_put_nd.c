
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int path; } ;


 int kfree (struct nameidata*) ;
 int path_put (int *) ;

__attribute__((used)) static void audit_put_nd(struct nameidata *ndp, struct nameidata *ndw)
{
 if (ndp) {
  path_put(&ndp->path);
  kfree(ndp);
 }
 if (ndw) {
  path_put(&ndw->path);
  kfree(ndw);
 }
}
