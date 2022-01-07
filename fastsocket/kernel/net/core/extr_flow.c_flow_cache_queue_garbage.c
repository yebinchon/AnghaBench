
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct flow_cache_percpu {int hash_count; } ;


 int flow_cache_gc_list ;
 int flow_cache_gc_lock ;
 int flow_cache_gc_work ;
 int list_splice_tail (struct list_head*,int *) ;
 int schedule_work (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void flow_cache_queue_garbage(struct flow_cache_percpu *fcp,
         int deleted, struct list_head *gc_list)
{
 if (deleted) {
  fcp->hash_count -= deleted;
  spin_lock_bh(&flow_cache_gc_lock);
  list_splice_tail(gc_list, &flow_cache_gc_list);
  spin_unlock_bh(&flow_cache_gc_lock);
  schedule_work(&flow_cache_gc_work);
 }
}
