
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct dentry {TYPE_1__* d_op; } ;
struct TYPE_2__ {int (* d_revalidate ) (struct dentry*,struct nameidata*) ;} ;


 struct dentry* ERR_PTR (int) ;
 int d_invalidate (struct dentry*) ;
 int dput (struct dentry*) ;
 int stub1 (struct dentry*,struct nameidata*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline struct dentry *
do_revalidate(struct dentry *dentry, struct nameidata *nd)
{
 int status = dentry->d_op->d_revalidate(dentry, nd);
 if (unlikely(status <= 0)) {






  if (!status) {
   if (!d_invalidate(dentry)) {
    dput(dentry);
    dentry = ((void*)0);
   }
  } else {
   dput(dentry);
   dentry = ERR_PTR(status);
  }
 }
 return dentry;
}
