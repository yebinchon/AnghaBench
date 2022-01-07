
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hrtimer_clock_base {int active; TYPE_4__* cpu_base; int offset; int * first; } ;
struct hrtimer {int state; int node; } ;
struct TYPE_6__ {scalar_t__ tv64; } ;
typedef TYPE_2__ ktime_t ;
struct TYPE_5__ {scalar_t__ tv64; } ;
struct TYPE_7__ {TYPE_1__ expires_next; } ;


 int HRTIMER_STATE_ENQUEUED ;
 int hrtimer_force_reprogram (TYPE_4__*,int) ;
 int hrtimer_get_expires (struct hrtimer*) ;
 scalar_t__ hrtimer_hres_active () ;
 TYPE_2__ ktime_sub (int ,int ) ;
 int rb_erase (int *,int *) ;
 int * rb_next (int *) ;

__attribute__((used)) static void __remove_hrtimer(struct hrtimer *timer,
        struct hrtimer_clock_base *base,
        unsigned long newstate, int reprogram)
{
 if (!(timer->state & HRTIMER_STATE_ENQUEUED))
  goto out;





 if (base->first == &timer->node) {
  base->first = rb_next(&timer->node);
 }
 rb_erase(&timer->node, &base->active);
out:
 timer->state = newstate;
}
