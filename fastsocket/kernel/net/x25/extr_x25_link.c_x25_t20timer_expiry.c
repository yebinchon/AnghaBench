
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_neigh {int dummy; } ;


 int x25_start_t20timer (struct x25_neigh*) ;
 int x25_transmit_restart_request (struct x25_neigh*) ;

__attribute__((used)) static void x25_t20timer_expiry(unsigned long param)
{
 struct x25_neigh *nb = (struct x25_neigh *)param;

 x25_transmit_restart_request(nb);

 x25_start_t20timer(nb);
}
