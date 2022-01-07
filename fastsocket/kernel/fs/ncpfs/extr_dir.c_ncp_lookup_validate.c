
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;


 int __ncp_lookup_validate (struct dentry*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static int
ncp_lookup_validate(struct dentry * dentry, struct nameidata *nd)
{
 int res;
 lock_kernel();
 res = __ncp_lookup_validate(dentry);
 unlock_kernel();
 return res;
}
