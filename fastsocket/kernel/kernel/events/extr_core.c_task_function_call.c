
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct remote_function_call {int (* func ) (void*) ;void* info; int ret; struct task_struct* p; } ;


 int ESRCH ;
 int remote_function ;
 int smp_call_function_single (int ,int ,struct remote_function_call*,int) ;
 int task_cpu (struct task_struct*) ;
 scalar_t__ task_curr (struct task_struct*) ;

__attribute__((used)) static int
task_function_call(struct task_struct *p, int (*func) (void *info), void *info)
{
 struct remote_function_call data = {
  .p = p,
  .func = func,
  .info = info,
  .ret = -ESRCH,
 };

 if (task_curr(p))
  smp_call_function_single(task_cpu(p), remote_function, &data, 1);

 return data.ret;
}
