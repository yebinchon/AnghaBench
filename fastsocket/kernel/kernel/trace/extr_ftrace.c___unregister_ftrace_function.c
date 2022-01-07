
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
 scalar_t__ ftrace_disabled ;
 scalar_t__ ftrace_enabled ;
 int * ftrace_global_list ;
 int ftrace_list_end ;
 int * ftrace_ops_list ;
 struct ftrace_ops global_ops ;
 int remove_ftrace_ops (int **,struct ftrace_ops*) ;
 int synchronize_sched () ;
 int update_ftrace_function () ;

__attribute__((used)) static int __unregister_ftrace_function(struct ftrace_ops *ops)
{
 int ret;

 if (ftrace_disabled)
  return -ENODEV;

 if (WARN_ON(!(ops->flags & FTRACE_OPS_FL_ENABLED)))
  return -EBUSY;

 if (FTRACE_WARN_ON(ops == &global_ops))
  return -EINVAL;

 if (ops->flags & FTRACE_OPS_FL_GLOBAL) {
  ret = remove_ftrace_ops(&ftrace_global_list, ops);
  if (!ret && ftrace_global_list == &ftrace_list_end)
   ret = remove_ftrace_ops(&ftrace_ops_list, &global_ops);
  if (!ret)
   ops->flags &= ~FTRACE_OPS_FL_ENABLED;
 } else
  ret = remove_ftrace_ops(&ftrace_ops_list, ops);

 if (ret < 0)
  return ret;

 if (ftrace_enabled)
  update_ftrace_function();





 if (ops->flags & FTRACE_OPS_FL_DYNAMIC)
  synchronize_sched();

 return 0;
}
