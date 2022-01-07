
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ima_iint_cache {int rcu; } ;


 int call_rcu (int *,int ) ;
 int iint_rcu_free ;
 int ima_enabled ;
 int ima_iint_lock ;
 int ima_iint_store ;
 struct ima_iint_cache* radix_tree_delete (int *,unsigned long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ima_inode_free(struct inode *inode)
{
 struct ima_iint_cache *iint;

 if (!ima_enabled)
  return;

 spin_lock(&ima_iint_lock);
 iint = radix_tree_delete(&ima_iint_store, (unsigned long)inode);
 spin_unlock(&ima_iint_lock);
 if (iint)
  call_rcu(&iint->rcu, iint_rcu_free);
}
