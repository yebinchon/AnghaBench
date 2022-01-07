
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backtrace_work ;
 int complete (int *) ;
 int dump_stack () ;

__attribute__((used)) static void backtrace_test_irq_callback(unsigned long data)
{
 dump_stack();
 complete(&backtrace_work);
}
