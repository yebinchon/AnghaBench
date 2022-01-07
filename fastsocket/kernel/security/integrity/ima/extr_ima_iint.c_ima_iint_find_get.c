
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ima_iint_cache {int refcount; } ;


 int ima_iint_store ;
 int kref_get (int *) ;
 struct ima_iint_cache* radix_tree_lookup (int *,unsigned long) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

struct ima_iint_cache *ima_iint_find_get(struct inode *inode)
{
 struct ima_iint_cache *iint;

 rcu_read_lock();
 iint = radix_tree_lookup(&ima_iint_store, (unsigned long)inode);
 if (!iint)
  goto out;
 kref_get(&iint->refcount);
out:
 rcu_read_unlock();
 return iint;
}
