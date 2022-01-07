
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_ops {int flags; } ;


 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int FTRACE_OPS_FL_DYNAMIC ;
 int FTRACE_OPS_FL_ENABLED ;
 int FTRACE_OPS_FL_GLOBAL ;
 scalar_t__ FTRACE_WARN_ON (int) ;
 scalar_t__ WARN_ON (int) ;
 int add_ftrace_ops (int **,struct ftrace_ops*) ;
 int core_kernel_data (unsigned long) ;
 scalar_t__ ftrace_disabled ;
 scalar_t__ ftrace_enabled ;
 int * ftrace_global_list ;
 int ftrace_list_end ;
 int * ftrace_ops_list ;
 struct ftrace_ops global_ops ;
 int update_ftrace_function () ;

__attribute__((used)) static int __register_ftrace_function(struct ftrace_ops *ops)
{
 if (ftrace_disabled)
  return -ENODEV;

 if (FTRACE_WARN_ON(ops == &global_ops))
  return -EINVAL;

 if (WARN_ON(ops->flags & FTRACE_OPS_FL_ENABLED))
  return -EBUSY;

 if (!core_kernel_data((unsigned long)ops))
  ops->flags |= FTRACE_OPS_FL_DYNAMIC;

 if (ops->flags & FTRACE_OPS_FL_GLOBAL) {
  int first = ftrace_global_list == &ftrace_list_end;
  add_ftrace_ops(&ftrace_global_list, ops);
  ops->flags |= FTRACE_OPS_FL_ENABLED;
  if (first)
   add_ftrace_ops(&ftrace_ops_list, &global_ops);
 } else
  add_ftrace_ops(&ftrace_ops_list, ops);

 if (ftrace_enabled)
  update_ftrace_function();

 return 0;
}
