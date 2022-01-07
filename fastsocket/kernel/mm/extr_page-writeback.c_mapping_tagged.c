
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int page_tree; } ;


 int radix_tree_tagged (int *,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int mapping_tagged(struct address_space *mapping, int tag)
{
 int ret;
 rcu_read_lock();
 ret = radix_tree_tagged(&mapping->page_tree, tag);
 rcu_read_unlock();
 return ret;
}
