
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 unsigned long CPU_DEAD ;
 unsigned long CPU_DEAD_FROZEN ;
 int NOTIFY_OK ;
 int buffer_exit_cpu (unsigned long) ;

__attribute__((used)) static int buffer_cpu_notify(struct notifier_block *self,
         unsigned long action, void *hcpu)
{
 if (action == CPU_DEAD || action == CPU_DEAD_FROZEN)
  buffer_exit_cpu((unsigned long)hcpu);
 return NOTIFY_OK;
}
