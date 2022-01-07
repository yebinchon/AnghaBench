
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct qstr {int dummy; } ;
struct dentry {int d_flags; struct dentry* d_parent; struct super_block* d_sb; } ;


 int DCACHE_DISCONNECTED ;
 struct dentry* d_alloc (int *,struct qstr const*) ;

struct dentry *d_alloc_pseudo(struct super_block *sb, const struct qstr *name)
{
 struct dentry *dentry = d_alloc(((void*)0), name);
 if (dentry) {
  dentry->d_sb = sb;
  dentry->d_parent = dentry;
  dentry->d_flags |= DCACHE_DISCONNECTED;
 }
 return dentry;
}
