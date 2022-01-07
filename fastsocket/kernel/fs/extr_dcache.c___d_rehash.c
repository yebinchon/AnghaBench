
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct dentry {int d_hash; int d_flags; } ;


 int DCACHE_UNHASHED ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;

__attribute__((used)) static void __d_rehash(struct dentry * entry, struct hlist_head *list)
{

  entry->d_flags &= ~DCACHE_UNHASHED;
  hlist_add_head_rcu(&entry->d_hash, list);
}
