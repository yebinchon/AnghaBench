
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int d_rcu; } ;
struct dentry {TYPE_2__ d_u; int d_hash; TYPE_1__* d_op; } ;
struct TYPE_3__ {int (* d_release ) (struct dentry*) ;} ;


 int __d_free (struct dentry*) ;
 int call_rcu (int *,int ) ;
 int d_callback ;
 scalar_t__ hlist_unhashed (int *) ;
 int stub1 (struct dentry*) ;

__attribute__((used)) static void d_free(struct dentry *dentry)
{
 if (dentry->d_op && dentry->d_op->d_release)
  dentry->d_op->d_release(dentry);

 if (hlist_unhashed(&dentry->d_hash))
  __d_free(dentry);
 else
  call_rcu(&dentry->d_u.d_rcu, d_callback);
}
