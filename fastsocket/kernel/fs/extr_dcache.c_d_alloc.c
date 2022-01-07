
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qstr {int len; int name; int hash; } ;
struct TYPE_5__ {int d_child; } ;
struct TYPE_4__ {char* name; int len; int hash; } ;
struct dentry {char* d_iname; int d_subdirs; TYPE_2__ d_u; int * d_sb; int * d_parent; int d_alias; int d_lru; int d_hash; scalar_t__ d_mounted; int * d_fsdata; int * d_op; int * d_inode; int d_lock; int d_flags; int d_count; TYPE_1__ d_name; } ;
struct TYPE_6__ {int nr_dentry; } ;


 int DCACHE_UNHASHED ;
 int DNAME_INLINE_LEN ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 int dcache_lock ;
 int dentry_cache ;
 TYPE_3__ dentry_stat ;
 int * dget (struct dentry*) ;
 char* kmalloc (int,int ) ;
 struct dentry* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct dentry*) ;
 int list_add (int *,int *) ;
 int memcpy (char*,int ,int) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

struct dentry *d_alloc(struct dentry * parent, const struct qstr *name)
{
 struct dentry *dentry;
 char *dname;

 dentry = kmem_cache_alloc(dentry_cache, GFP_KERNEL);
 if (!dentry)
  return ((void*)0);

 if (name->len > DNAME_INLINE_LEN-1) {
  dname = kmalloc(name->len + 1, GFP_KERNEL);
  if (!dname) {
   kmem_cache_free(dentry_cache, dentry);
   return ((void*)0);
  }
 } else {
  dname = dentry->d_iname;
 }
 dentry->d_name.name = dname;

 dentry->d_name.len = name->len;
 dentry->d_name.hash = name->hash;
 memcpy(dname, name->name, name->len);
 dname[name->len] = 0;

 atomic_set(&dentry->d_count, 1);
 dentry->d_flags = DCACHE_UNHASHED;
 spin_lock_init(&dentry->d_lock);
 dentry->d_inode = ((void*)0);
 dentry->d_parent = ((void*)0);
 dentry->d_sb = ((void*)0);
 dentry->d_op = ((void*)0);
 dentry->d_fsdata = ((void*)0);
 dentry->d_mounted = 0;
 INIT_HLIST_NODE(&dentry->d_hash);
 INIT_LIST_HEAD(&dentry->d_lru);
 INIT_LIST_HEAD(&dentry->d_subdirs);
 INIT_LIST_HEAD(&dentry->d_alias);

 if (parent) {
  dentry->d_parent = dget(parent);
  dentry->d_sb = parent->d_sb;
 } else {
  INIT_LIST_HEAD(&dentry->d_u.d_child);
 }

 spin_lock(&dcache_lock);
 if (parent)
  list_add(&dentry->d_u.d_child, &parent->d_subdirs);
 dentry_stat.nr_dentry++;
 spin_unlock(&dcache_lock);

 return dentry;
}
