
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int dep_map; int owner; } ;
struct rq {TYPE_1__ lock; } ;


 int _THIS_IP_ ;
 int current ;
 int spin_acquire (int *,int ,int ,int ) ;
 int spin_unlock_irq (TYPE_1__*) ;

__attribute__((used)) static inline void finish_lock_switch(struct rq *rq, struct task_struct *prev)
{
 spin_acquire(&rq->lock.dep_map, 0, 0, _THIS_IP_);

 spin_unlock_irq(&rq->lock);
}
