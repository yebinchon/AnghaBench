
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_ra_state {int dummy; } ;
struct address_space {int page_tree; } ;
typedef int pgoff_t ;


 int radix_tree_prev_hole (int *,int,unsigned long) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static pgoff_t count_history_pages(struct address_space *mapping,
       struct file_ra_state *ra,
       pgoff_t offset, unsigned long max)
{
 pgoff_t head;

 rcu_read_lock();
 head = radix_tree_prev_hole(&mapping->page_tree, offset - 1, max);
 rcu_read_unlock();

 return offset - 1 - head;
}
