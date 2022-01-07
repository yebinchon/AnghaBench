
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int in_atomic () ;
 int oom_killer_disable () ;
 int printk (char*) ;
 int try_to_freeze_tasks (int) ;

int freeze_processes(void)
{
 int error;

 printk("Freezing user space processes ... ");
 error = try_to_freeze_tasks(1);
 if (error)
  goto Exit;
 printk("done.\n");

 printk("Freezing remaining freezable tasks ... ");
 error = try_to_freeze_tasks(0);
 if (error)
  goto Exit;
 printk("done.");

 oom_killer_disable();
 Exit:
 BUG_ON(in_atomic());
 printk("\n");

 return error;
}
