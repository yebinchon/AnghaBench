
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
 int NOTIFY_OK ;
 int tick_broadcast_on_off (unsigned long,void*) ;
 int tick_broadcast_oneshot_control (unsigned long) ;
 int tick_check_new_device (void*) ;
 int tick_handover_do_timer (void*) ;
 int tick_resume () ;
 int tick_shutdown (void*) ;
 int tick_shutdown_broadcast (void*) ;
 int tick_shutdown_broadcast_oneshot (void*) ;
 int tick_suspend () ;
 int tick_suspend_broadcast () ;

__attribute__((used)) static int tick_notify(struct notifier_block *nb, unsigned long reason,
          void *dev)
{
 switch (reason) {

 case 137:
  return tick_check_new_device(dev);

 case 132:
 case 133:
 case 134:
  tick_broadcast_on_off(reason, dev);
  break;

 case 136:
 case 135:
  tick_broadcast_oneshot_control(reason);
  break;

 case 130:
  tick_handover_do_timer(dev);
  break;

 case 131:
  tick_shutdown_broadcast_oneshot(dev);
  tick_shutdown_broadcast(dev);
  tick_shutdown(dev);
  break;

 case 128:
  tick_suspend();
  tick_suspend_broadcast();
  break;

 case 129:
  tick_resume();
  break;

 default:
  break;
 }

 return NOTIFY_OK;
}
