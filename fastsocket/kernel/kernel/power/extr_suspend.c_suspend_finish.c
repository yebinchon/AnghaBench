
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PM_POST_SUSPEND ;
 int pm_notifier_call_chain (int ) ;
 int pm_restore_console () ;
 int suspend_thaw_processes () ;
 int usermodehelper_enable () ;

__attribute__((used)) static void suspend_finish(void)
{
 suspend_thaw_processes();
 usermodehelper_enable();
 pm_notifier_call_chain(PM_POST_SUSPEND);
 pm_restore_console();
}
