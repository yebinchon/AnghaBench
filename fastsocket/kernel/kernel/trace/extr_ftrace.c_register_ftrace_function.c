
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_ops {int dummy; } ;


 int __register_ftrace_function (struct ftrace_ops*) ;
 int ftrace_disabled ;
 int ftrace_lock ;
 int ftrace_startup (struct ftrace_ops*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int ) ;

int register_ftrace_function(struct ftrace_ops *ops)
{
 int ret = -1;

 mutex_lock(&ftrace_lock);

 if (unlikely(ftrace_disabled))
  goto out_unlock;

 ret = __register_ftrace_function(ops);
 if (!ret)
  ret = ftrace_startup(ops, 0);


 out_unlock:
 mutex_unlock(&ftrace_lock);
 return ret;
}
