
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_ops {int dummy; } ;


 int __unregister_ftrace_function (struct ftrace_ops*) ;
 int ftrace_lock ;
 int ftrace_shutdown (struct ftrace_ops*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int unregister_ftrace_function(struct ftrace_ops *ops)
{
 int ret;

 mutex_lock(&ftrace_lock);
 ret = __unregister_ftrace_function(ops);
 if (!ret)
  ftrace_shutdown(ops, 0);
 mutex_unlock(&ftrace_lock);

 return ret;
}
