
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backtrace_tasklet ;
 int backtrace_work ;
 int init_completion (int *) ;
 int printk (char*) ;
 int tasklet_schedule (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void backtrace_test_irq(void)
{
 printk("Testing a backtrace from irq context.\n");
 printk("The following trace is a kernel self test and not a bug!\n");

 init_completion(&backtrace_work);
 tasklet_schedule(&backtrace_tasklet);
 wait_for_completion(&backtrace_work);
}
