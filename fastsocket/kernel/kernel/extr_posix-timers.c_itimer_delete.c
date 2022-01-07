
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct k_itimer {int * it_signal; int list; int it_lock; } ;


 int IT_ID_SET ;
 scalar_t__ TIMER_RETRY ;
 int list_del (int *) ;
 int release_posix_timer (struct k_itimer*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 scalar_t__ timer_delete_hook (struct k_itimer*) ;
 int unlock_timer (struct k_itimer*,unsigned long) ;

__attribute__((used)) static void itimer_delete(struct k_itimer *timer)
{
 unsigned long flags;

retry_delete:
 spin_lock_irqsave(&timer->it_lock, flags);

 if (timer_delete_hook(timer) == TIMER_RETRY) {
  unlock_timer(timer, flags);
  goto retry_delete;
 }
 list_del(&timer->list);




 timer->it_signal = ((void*)0);

 unlock_timer(timer, flags);
 release_posix_timer(timer, IT_ID_SET);
}
