
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iriap_cb {int watchdog_timer; } ;


 int irda_start_timer (int *,int,struct iriap_cb*,int ) ;
 int iriap_watchdog_timer_expired ;

__attribute__((used)) static inline void iriap_start_watchdog_timer(struct iriap_cb *self,
           int timeout)
{
 irda_start_timer(&self->watchdog_timer, timeout, self,
    iriap_watchdog_timer_expired);
}
