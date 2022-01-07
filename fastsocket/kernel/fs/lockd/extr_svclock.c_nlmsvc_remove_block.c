
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlm_block {int b_list; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;
 int nlm_blocked_lock ;
 int nlmsvc_release_block (struct nlm_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
nlmsvc_remove_block(struct nlm_block *block)
{
 if (!list_empty(&block->b_list)) {
  spin_lock(&nlm_blocked_lock);
  list_del_init(&block->b_list);
  spin_unlock(&nlm_blocked_lock);
  nlmsvc_release_block(block);
 }
}
