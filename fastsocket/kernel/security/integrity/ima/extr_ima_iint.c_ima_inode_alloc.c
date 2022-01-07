
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ima_iint_cache {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int iint_cache ;
 int ima_enabled ;
 int ima_iint_lock ;
 int ima_iint_store ;
 struct ima_iint_cache* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct ima_iint_cache*) ;
 int radix_tree_insert (int *,unsigned long,struct ima_iint_cache*) ;
 int radix_tree_preload (int ) ;
 int radix_tree_preload_end () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ima_inode_alloc(struct inode *inode)
{
 struct ima_iint_cache *iint = ((void*)0);
 int rc = 0;

 if (!ima_enabled)
  return 0;

 iint = kmem_cache_alloc(iint_cache, GFP_NOFS);
 if (!iint)
  return -ENOMEM;

 rc = radix_tree_preload(GFP_NOFS);
 if (rc < 0)
  goto out;

 spin_lock(&ima_iint_lock);
 rc = radix_tree_insert(&ima_iint_store, (unsigned long)inode, iint);
 spin_unlock(&ima_iint_lock);
 radix_tree_preload_end();
out:
 if (rc < 0)
  kmem_cache_free(iint_cache, iint);

 return rc;
}
