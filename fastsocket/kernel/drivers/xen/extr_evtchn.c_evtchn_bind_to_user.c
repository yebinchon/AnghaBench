
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_user_data {int name; } ;


 int BUG_ON (int ) ;
 int IRQF_DISABLED ;
 int bind_evtchn_to_irqhandler (int,int ,int ,int ,void*) ;
 int evtchn_interrupt ;
 struct per_user_data** port_user ;

__attribute__((used)) static int evtchn_bind_to_user(struct per_user_data *u, int port)
{
 int rc = 0;
 BUG_ON(port_user[port] != ((void*)0));
 port_user[port] = u;

 rc = bind_evtchn_to_irqhandler(port, evtchn_interrupt, IRQF_DISABLED,
           u->name, (void *)(unsigned long)port);
 if (rc >= 0)
  rc = 0;

 return rc;
}
