
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* begin ) () ;int (* prepare ) () ;int (* end ) () ;int (* finish ) () ;int (* enter ) () ;int (* recover ) () ;} ;


 int ENOSYS ;
 int PMSG_HIBERNATE ;
 int PMSG_RESTORE ;
 int disable_nonboot_cpus () ;
 int dpm_resume_end (int ) ;
 int dpm_suspend_noirq (int ) ;
 int dpm_suspend_start (int ) ;
 int entering_platform_hibernation ;
 TYPE_1__* hibernation_ops ;
 int local_irq_disable () ;
 int resume_console () ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 int stub4 () ;
 int stub5 () ;
 int stub6 () ;
 int suspend_console () ;
 int sysdev_suspend (int ) ;

int hibernation_platform_enter(void)
{
 int error;

 if (!hibernation_ops)
  return -ENOSYS;






 error = hibernation_ops->begin();
 if (error)
  goto Close;

 entering_platform_hibernation = 1;
 suspend_console();
 error = dpm_suspend_start(PMSG_HIBERNATE);
 if (error) {
  if (hibernation_ops->recover)
   hibernation_ops->recover();
  goto Resume_devices;
 }

 error = dpm_suspend_noirq(PMSG_HIBERNATE);
 if (error)
  goto Resume_devices;

 error = hibernation_ops->prepare();
 if (error)
  goto Platform_finish;

 error = disable_nonboot_cpus();
 if (error)
  goto Platform_finish;

 local_irq_disable();
 sysdev_suspend(PMSG_HIBERNATE);
 hibernation_ops->enter();

 while (1);





 Platform_finish:
 hibernation_ops->finish();

 dpm_suspend_noirq(PMSG_RESTORE);

 Resume_devices:
 entering_platform_hibernation = 0;
 dpm_resume_end(PMSG_RESTORE);
 resume_console();

 Close:
 hibernation_ops->end();

 return error;
}
