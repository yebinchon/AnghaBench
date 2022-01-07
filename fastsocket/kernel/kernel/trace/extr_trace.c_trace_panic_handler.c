
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;
 int ftrace_dump () ;
 scalar_t__ ftrace_dump_on_oops ;

__attribute__((used)) static int trace_panic_handler(struct notifier_block *this,
          unsigned long event, void *unused)
{
 if (ftrace_dump_on_oops)
  ftrace_dump();
 return NOTIFY_OK;
}
