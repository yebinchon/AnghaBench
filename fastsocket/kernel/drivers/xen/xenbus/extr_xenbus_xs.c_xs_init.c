
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int pid; } ;
struct TYPE_2__ {int watch_mutex; int transaction_mutex; int response_mutex; int request_mutex; int reply_waitq; int reply_lock; int reply_list; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 struct task_struct* kthread_run (int ,int *,char*) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int xb_init_comms () ;
 int xenbus_thread ;
 int xenwatch_pid ;
 int xenwatch_thread ;
 TYPE_1__ xs_state ;

int xs_init(void)
{
 int err;
 struct task_struct *task;

 INIT_LIST_HEAD(&xs_state.reply_list);
 spin_lock_init(&xs_state.reply_lock);
 init_waitqueue_head(&xs_state.reply_waitq);

 mutex_init(&xs_state.request_mutex);
 mutex_init(&xs_state.response_mutex);
 init_rwsem(&xs_state.transaction_mutex);
 init_rwsem(&xs_state.watch_mutex);


 err = xb_init_comms();
 if (err)
  return err;

 task = kthread_run(xenwatch_thread, ((void*)0), "xenwatch");
 if (IS_ERR(task))
  return PTR_ERR(task);
 xenwatch_pid = task->pid;

 task = kthread_run(xenbus_thread, ((void*)0), "xenbus");
 if (IS_ERR(task))
  return PTR_ERR(task);

 return 0;
}
