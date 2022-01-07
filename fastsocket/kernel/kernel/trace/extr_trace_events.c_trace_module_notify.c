
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;



__attribute__((used)) static int trace_module_notify(struct notifier_block *self,
          unsigned long val, void *data)
{
 return 0;
}
