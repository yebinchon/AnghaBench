
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int BUG_ON (int) ;
 int blocking_notifier_call_chain (int *,int ,int *) ;
 int fe_watch ;
 int register_xenbus_watch (int *) ;
 int xenbus_backend_probe_and_watch () ;
 int xenbus_frontend ;
 int xenbus_probe_devices (int *) ;
 int xenstore_chain ;
 scalar_t__ xenstored_ready ;

void xenbus_probe(struct work_struct *unused)
{
 BUG_ON((xenstored_ready <= 0));


 xenbus_probe_devices(&xenbus_frontend);
 register_xenbus_watch(&fe_watch);
 xenbus_backend_probe_and_watch();


 blocking_notifier_call_chain(&xenstore_chain, 0, ((void*)0));
}
