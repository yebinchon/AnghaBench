
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* dentry; } ;
struct dentry {int d_lock; int d_flags; } ;
struct dcookie_struct {struct path path; } ;


 int DCACHE_COOKIE ;
 int GFP_KERNEL ;
 int dcookie_cache ;
 int hash_dcookie (struct dcookie_struct*) ;
 struct dcookie_struct* kmem_cache_alloc (int ,int ) ;
 int path_get (struct path*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct dcookie_struct *alloc_dcookie(struct path *path)
{
 struct dcookie_struct *dcs = kmem_cache_alloc(dcookie_cache,
       GFP_KERNEL);
 struct dentry *d;
 if (!dcs)
  return ((void*)0);

 d = path->dentry;
 spin_lock(&d->d_lock);
 d->d_flags |= DCACHE_COOKIE;
 spin_unlock(&d->d_lock);

 dcs->path = *path;
 path_get(path);
 hash_dcookie(dcs);
 return dcs;
}
