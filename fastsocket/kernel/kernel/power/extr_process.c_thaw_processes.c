
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int oom_killer_enable () ;
 int printk (char*) ;
 int schedule () ;
 int thaw_tasks (int) ;

void thaw_processes(void)
{
 oom_killer_enable();

 printk("Restarting tasks ... ");
 thaw_tasks(1);
 thaw_tasks(0);
 schedule();
 printk("done.\n");
}
