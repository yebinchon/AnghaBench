
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct config_item {int ci_dentry; } ;


 struct dentry* dget (int ) ;
 int dput (struct dentry*) ;
 int remove_dir (struct dentry*) ;

__attribute__((used)) static void configfs_remove_dir(struct config_item * item)
{
 struct dentry * dentry = dget(item->ci_dentry);

 if (!dentry)
  return;

 remove_dir(dentry);



 dput(dentry);
}
