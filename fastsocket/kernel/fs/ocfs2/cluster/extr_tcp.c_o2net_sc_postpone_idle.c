
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2net_sock_container {int sc_idle_timeout; } ;


 int o2net_sc_reset_idle_timer (struct o2net_sock_container*) ;
 scalar_t__ timer_pending (int *) ;

__attribute__((used)) static void o2net_sc_postpone_idle(struct o2net_sock_container *sc)
{

 if (timer_pending(&sc->sc_idle_timeout))
  o2net_sc_reset_idle_timer(sc);
}
