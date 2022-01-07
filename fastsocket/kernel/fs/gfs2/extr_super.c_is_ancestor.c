
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {struct dentry* d_parent; } ;


 int IS_ROOT (struct dentry const*) ;

__attribute__((used)) static int is_ancestor(const struct dentry *d1, const struct dentry *d2)
{
 do {
  if (d1 == d2)
   return 1;
  d1 = d1->d_parent;
 } while (!IS_ROOT(d1));
 return 0;
}
