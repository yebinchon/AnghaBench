
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backtrace_test_irq () ;
 int backtrace_test_normal () ;
 int backtrace_test_saved () ;
 int printk (char*) ;

__attribute__((used)) static int backtrace_regression_test(void)
{
 printk("====[ backtrace testing ]===========\n");

 backtrace_test_normal();
 backtrace_test_irq();
 backtrace_test_saved();

 printk("====[ end of backtrace testing ]====\n");
 return 0;
}
