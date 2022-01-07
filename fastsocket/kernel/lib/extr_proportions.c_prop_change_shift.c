
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct prop_descriptor {int index; int mutex; TYPE_1__* pg; } ;
struct TYPE_2__ {int shift; int events; } ;


 int PROP_MAX_SHIFT ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int percpu_counter_set (int *,int) ;
 int percpu_counter_sum (int *) ;
 int smp_wmb () ;
 int synchronize_rcu () ;

void prop_change_shift(struct prop_descriptor *pd, int shift)
{
 int index;
 int offset;
 u64 events;
 unsigned long flags;

 if (shift > PROP_MAX_SHIFT)
  shift = PROP_MAX_SHIFT;

 mutex_lock(&pd->mutex);

 index = pd->index ^ 1;
 offset = pd->pg[pd->index].shift - shift;
 if (!offset)
  goto out;

 pd->pg[index].shift = shift;

 local_irq_save(flags);
 events = percpu_counter_sum(&pd->pg[pd->index].events);
 if (offset < 0)
  events <<= -offset;
 else
  events >>= offset;
 percpu_counter_set(&pd->pg[index].events, events);




 smp_wmb();
 pd->index = index;
 local_irq_restore(flags);

 synchronize_rcu();

out:
 mutex_unlock(&pd->mutex);
}
