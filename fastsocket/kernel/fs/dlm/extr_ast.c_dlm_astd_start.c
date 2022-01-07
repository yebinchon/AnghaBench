
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int ast_queue ;
 int ast_queue_lock ;
 int astd_running ;
 struct task_struct* astd_task ;
 int dlm_astd ;
 struct task_struct* kthread_run (int ,int *,char*) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

int dlm_astd_start(void)
{
 struct task_struct *p;
 int error = 0;

 INIT_LIST_HEAD(&ast_queue);
 spin_lock_init(&ast_queue_lock);
 mutex_init(&astd_running);

 p = kthread_run(dlm_astd, ((void*)0), "dlm_astd");
 if (IS_ERR(p))
  error = PTR_ERR(p);
 else
  astd_task = p;
 return error;
}
