
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hub_event_list ;
 int hub_events () ;
 int khubd_wait ;
 scalar_t__ kthread_should_stop () ;
 int list_empty (int *) ;
 int pr_debug (char*,int ) ;
 int set_freezable () ;
 int usbcore_name ;
 int wait_event_freezable (int ,int) ;

__attribute__((used)) static int hub_thread(void *__unused)
{





 set_freezable();

 do {
  hub_events();
  wait_event_freezable(khubd_wait,
    !list_empty(&hub_event_list) ||
    kthread_should_stop());
 } while (!kthread_should_stop() || !list_empty(&hub_event_list));

 pr_debug("%s: khubd exiting\n", usbcore_name);
 return 0;
}
