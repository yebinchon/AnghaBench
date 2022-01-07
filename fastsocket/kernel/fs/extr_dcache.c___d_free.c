
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct dentry {TYPE_1__ d_name; int d_alias; } ;


 int WARN_ON (int) ;
 int dentry_cache ;
 scalar_t__ dname_external (struct dentry*) ;
 int kfree (int ) ;
 int kmem_cache_free (int ,struct dentry*) ;
 int list_empty (int *) ;

__attribute__((used)) static void __d_free(struct dentry *dentry)
{
 WARN_ON(!list_empty(&dentry->d_alias));
 if (dname_external(dentry))
  kfree(dentry->d_name.name);
 kmem_cache_free(dentry_cache, dentry);
}
