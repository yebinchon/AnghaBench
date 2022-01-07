
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct task_struct* rq_task; } ;
struct svc_serv {int sv_nrthreads; int sv_nrpools; int sv_module; int sv_name; int sv_function; } ;
struct svc_rqst {struct svc_rqst* rq_task; } ;
struct svc_pool {int sp_id; int sp_lock; scalar_t__ sp_nrthreads; } ;


 scalar_t__ IS_ERR (struct task_struct*) ;
 int PTR_ERR (struct task_struct*) ;
 int SIGINT ;
 int __module_get (int ) ;
 struct svc_pool* choose_pool (struct svc_serv*,struct svc_pool*,unsigned int*) ;
 struct task_struct* choose_victim (struct svc_serv*,struct svc_pool*,unsigned int*) ;
 struct task_struct* kthread_create (int ,struct task_struct*,int ) ;
 int module_put (int ) ;
 int send_sig (int ,struct task_struct*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int svc_exit_thread (struct task_struct*) ;
 int svc_pool_map_set_cpumask (struct task_struct*,int ) ;
 struct task_struct* svc_prepare_thread (struct svc_serv*,struct svc_pool*) ;
 int svc_sock_update_bufs (struct svc_serv*) ;
 int wake_up_process (struct task_struct*) ;

int
svc_set_num_threads(struct svc_serv *serv, struct svc_pool *pool, int nrservs)
{
 struct svc_rqst *rqstp;
 struct task_struct *task;
 struct svc_pool *chosen_pool;
 int error = 0;
 unsigned int state = serv->sv_nrthreads-1;

 if (pool == ((void*)0)) {

  nrservs -= (serv->sv_nrthreads-1);
 } else {
  spin_lock_bh(&pool->sp_lock);
  nrservs -= pool->sp_nrthreads;
  spin_unlock_bh(&pool->sp_lock);
 }


 while (nrservs > 0) {
  nrservs--;
  chosen_pool = choose_pool(serv, pool, &state);

  rqstp = svc_prepare_thread(serv, chosen_pool);
  if (IS_ERR(rqstp)) {
   error = PTR_ERR(rqstp);
   break;
  }

  __module_get(serv->sv_module);
  task = kthread_create(serv->sv_function, rqstp, serv->sv_name);
  if (IS_ERR(task)) {
   error = PTR_ERR(task);
   module_put(serv->sv_module);
   svc_exit_thread(rqstp);
   break;
  }

  rqstp->rq_task = task;
  if (serv->sv_nrpools > 1)
   svc_pool_map_set_cpumask(task, chosen_pool->sp_id);

  svc_sock_update_bufs(serv);
  wake_up_process(task);
 }

 while (nrservs < 0 &&
        (task = choose_victim(serv, pool, &state)) != ((void*)0)) {
  send_sig(SIGINT, task, 1);
  nrservs++;
 }

 return error;
}
