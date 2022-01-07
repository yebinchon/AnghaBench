
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enter; } ;


 int EPERM ;
 int PM_POST_SUSPEND ;
 int PM_SUSPEND_PREPARE ;
 int pm_notifier_call_chain (int ) ;
 int pm_prepare_console () ;
 int pm_restore_console () ;
 int suspend_freeze_processes () ;
 TYPE_1__* suspend_ops ;
 int suspend_thaw_processes () ;
 int usermodehelper_disable () ;
 int usermodehelper_enable () ;

__attribute__((used)) static int suspend_prepare(void)
{
 int error;

 if (!suspend_ops || !suspend_ops->enter)
  return -EPERM;

 pm_prepare_console();

 error = pm_notifier_call_chain(PM_SUSPEND_PREPARE);
 if (error)
  goto Finish;

 error = usermodehelper_disable();
 if (error)
  goto Finish;

 error = suspend_freeze_processes();
 if (!error)
  return 0;

 suspend_thaw_processes();
 usermodehelper_enable();
 Finish:
 pm_notifier_call_chain(PM_POST_SUSPEND);
 pm_restore_console();
 return error;
}
