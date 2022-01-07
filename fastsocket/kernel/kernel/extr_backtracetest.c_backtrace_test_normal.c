
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_stack () ;
 int printk (char*) ;

__attribute__((used)) static void backtrace_test_normal(void)
{
 printk("Testing a backtrace from process context.\n");
 printk("The following trace is a kernel self test and not a bug!\n");

 dump_stack();
}
