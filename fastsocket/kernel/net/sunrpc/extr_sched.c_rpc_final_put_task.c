
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct workqueue_struct {int dummy; } ;
struct TYPE_2__ {int tk_work; } ;
struct rpc_task {TYPE_1__ u; } ;


 int INIT_WORK (int *,int ) ;
 int queue_work (struct workqueue_struct*,int *) ;
 int rpc_async_release ;
 int rpc_free_task (struct rpc_task*) ;

__attribute__((used)) static void rpc_final_put_task(struct rpc_task *task,
  struct workqueue_struct *q)
{
 if (q != ((void*)0)) {
  INIT_WORK(&task->u.tk_work, rpc_async_release);
  queue_work(q, &task->u.tk_work);
 } else
  rpc_free_task(task);
}
