
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hrtimer {TYPE_2__* base; } ;
struct TYPE_4__ {TYPE_1__* cpu_base; } ;
struct TYPE_3__ {int lock; } ;


 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline
void unlock_hrtimer_base(const struct hrtimer *timer, unsigned long *flags)
{
 spin_unlock_irqrestore(&timer->base->cpu_base->lock, *flags);
}
