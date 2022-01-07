
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;


 int kfree (int ) ;
 int nd_get_link (struct nameidata*) ;

__attribute__((used)) static void
ecryptfs_put_link(struct dentry *dentry, struct nameidata *nd, void *ptr)
{

 kfree(nd_get_link(nd));
}
