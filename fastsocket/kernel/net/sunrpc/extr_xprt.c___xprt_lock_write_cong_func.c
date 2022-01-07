
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {struct rpc_task* snd_task; } ;
struct rpc_task {struct rpc_rqst* tk_rqstp; } ;
struct rpc_rqst {int rq_ntrans; scalar_t__ rq_bytes_sent; } ;


 scalar_t__ __xprt_get_cong (struct rpc_xprt*,struct rpc_task*) ;

__attribute__((used)) static bool __xprt_lock_write_cong_func(struct rpc_task *task, void *data)
{
 struct rpc_xprt *xprt = data;
 struct rpc_rqst *req;

 req = task->tk_rqstp;
 if (req == ((void*)0)) {
  xprt->snd_task = task;
  return 1;
 }
 if (__xprt_get_cong(xprt, task)) {
  xprt->snd_task = task;
  req->rq_bytes_sent = 0;
  req->rq_ntrans++;
  return 1;
 }
 return 0;
}
