
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k_itimer {int it_clock; } ;
struct k_clock {int (* timer_del ) (struct k_itimer*) ;} ;


 int EINVAL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct k_clock* clockid_to_kclock (int ) ;
 int stub1 (struct k_itimer*) ;

__attribute__((used)) static inline int timer_delete_hook(struct k_itimer *timer)
{
 struct k_clock *kc = clockid_to_kclock(timer->it_clock);

 if (WARN_ON_ONCE(!kc || !kc->timer_del))
  return -EINVAL;
 return kc->timer_del(timer);
}
