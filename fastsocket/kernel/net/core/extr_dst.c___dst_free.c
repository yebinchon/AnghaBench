
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dst_entry {struct dst_entry* next; } ;
struct TYPE_2__ {scalar_t__ timer_inc; int lock; int timer_expires; struct dst_entry* list; } ;


 scalar_t__ DST_GC_INC ;
 int DST_GC_MIN ;
 int ___dst_free (struct dst_entry*) ;
 int cancel_delayed_work (int *) ;
 TYPE_1__ dst_garbage ;
 int dst_gc_work ;
 int schedule_delayed_work (int *,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void __dst_free(struct dst_entry * dst)
{
 spin_lock_bh(&dst_garbage.lock);
 ___dst_free(dst);
 dst->next = dst_garbage.list;
 dst_garbage.list = dst;
 if (dst_garbage.timer_inc > DST_GC_INC) {
  dst_garbage.timer_inc = DST_GC_INC;
  dst_garbage.timer_expires = DST_GC_MIN;
  cancel_delayed_work(&dst_gc_work);
  schedule_delayed_work(&dst_gc_work, dst_garbage.timer_expires);
 }
 spin_unlock_bh(&dst_garbage.lock);
}
