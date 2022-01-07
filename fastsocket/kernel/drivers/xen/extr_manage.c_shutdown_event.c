
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int setup_shutdown_watcher () ;

__attribute__((used)) static int shutdown_event(struct notifier_block *notifier,
     unsigned long event,
     void *data)
{
 setup_shutdown_watcher();
 return NOTIFY_DONE;
}
