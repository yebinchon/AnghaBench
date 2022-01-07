
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct dst_entry {struct dst_entry* next; } ;
struct TYPE_2__ {int lock; struct dst_entry* list; } ;




 int NOTIFY_DONE ;
 struct dst_entry* dst_busy_list ;
 TYPE_1__ dst_garbage ;
 int dst_gc_mutex ;
 int dst_ifdown (struct dst_entry*,struct net_device*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int dst_dev_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct net_device *dev = ptr;
 struct dst_entry *dst, *last = ((void*)0);

 switch (event) {
 case 128:
 case 129:
  mutex_lock(&dst_gc_mutex);
  for (dst = dst_busy_list; dst; dst = dst->next) {
   last = dst;
   dst_ifdown(dst, dev, event != 129);
  }

  spin_lock_bh(&dst_garbage.lock);
  dst = dst_garbage.list;
  dst_garbage.list = ((void*)0);
  spin_unlock_bh(&dst_garbage.lock);

  if (last)
   last->next = dst;
  else
   dst_busy_list = dst;
  for (; dst; dst = dst->next) {
   dst_ifdown(dst, dev, event != 129);
  }
  mutex_unlock(&dst_gc_mutex);
  break;
 }
 return NOTIFY_DONE;
}
