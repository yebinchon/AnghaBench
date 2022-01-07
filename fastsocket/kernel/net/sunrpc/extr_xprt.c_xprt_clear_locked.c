
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int task_cleanup; int state; int * snd_task; } ;


 int XPRT_CLOSE_WAIT ;
 int XPRT_LOCKED ;
 int clear_bit (int ,int *) ;
 int queue_work (int ,int *) ;
 int rpciod_workqueue ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void xprt_clear_locked(struct rpc_xprt *xprt)
{
 xprt->snd_task = ((void*)0);
 if (!test_bit(XPRT_CLOSE_WAIT, &xprt->state)) {
  smp_mb__before_clear_bit();
  clear_bit(XPRT_LOCKED, &xprt->state);
  smp_mb__after_clear_bit();
 } else
  queue_work(rpciod_workqueue, &xprt->task_cleanup);
}
