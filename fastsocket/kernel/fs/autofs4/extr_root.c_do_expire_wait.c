
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int autofs4_del_expiring (struct dentry*) ;
 int autofs4_expire_wait (struct dentry*) ;
 struct dentry* autofs4_lookup_expiring (struct dentry*) ;
 int dput (struct dentry*) ;

__attribute__((used)) static int do_expire_wait(struct dentry *dentry)
{
 struct dentry *expiring;

 expiring = autofs4_lookup_expiring(dentry);
 if (!expiring)
  return autofs4_expire_wait(dentry);
 else {





  autofs4_expire_wait(expiring);
  autofs4_del_expiring(expiring);
  dput(expiring);
 }
 return 0;
}
