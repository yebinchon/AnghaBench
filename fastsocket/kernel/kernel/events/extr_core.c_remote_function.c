
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct remote_function_call {int info; int (* func ) (int ) ;int ret; struct task_struct* p; } ;


 int EAGAIN ;
 scalar_t__ smp_processor_id () ;
 int stub1 (int ) ;
 scalar_t__ task_cpu (struct task_struct*) ;
 int task_curr (struct task_struct*) ;

__attribute__((used)) static void remote_function(void *data)
{
 struct remote_function_call *tfc = data;
 struct task_struct *p = tfc->p;

 if (p) {
  tfc->ret = -EAGAIN;
  if (task_cpu(p) != smp_processor_id() || !task_curr(p))
   return;
 }

 tfc->ret = tfc->func(tfc->info);
}
