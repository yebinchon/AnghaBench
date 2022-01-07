
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_user_data {int dummy; } ;


 int barrier () ;
 int irq_from_evtchn (int) ;
 int ** port_user ;
 int unbind_from_irqhandler (int,void*) ;

__attribute__((used)) static void evtchn_unbind_from_user(struct per_user_data *u, int port)
{
 int irq = irq_from_evtchn(port);

 unbind_from_irqhandler(irq, (void *)(unsigned long)port);


 barrier();

 port_user[port] = ((void*)0);
}
