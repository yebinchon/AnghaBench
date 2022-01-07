
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace_engine_ops {int dummy; } ;
struct utrace_engine {int dummy; } ;
struct task_struct {int dummy; } ;
struct pid {int dummy; } ;


 struct utrace_engine* ERR_PTR (int ) ;
 int ESRCH ;
 int PIDTYPE_PID ;
 struct task_struct* get_pid_task (struct pid*,int ) ;
 int put_task_struct (struct task_struct*) ;
 struct utrace_engine* utrace_attach_task (struct task_struct*,int,struct utrace_engine_ops const*,void*) ;

struct utrace_engine *utrace_attach_pid(
 struct pid *pid, int flags,
 const struct utrace_engine_ops *ops, void *data)
{
 struct utrace_engine *engine = ERR_PTR(-ESRCH);
 struct task_struct *task = get_pid_task(pid, PIDTYPE_PID);
 if (task) {
  engine = utrace_attach_task(task, flags, ops, data);
  put_task_struct(task);
 }
 return engine;
}
