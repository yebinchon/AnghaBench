
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct nsproxy {int ipc_ns; } ;
typedef void ipc_namespace ;


 void* get_ipc_ns (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct nsproxy* task_nsproxy (struct task_struct*) ;

__attribute__((used)) static void *ipcns_get(struct task_struct *task)
{
 struct ipc_namespace *ns = ((void*)0);
 struct nsproxy *nsproxy;

 rcu_read_lock();
 nsproxy = task_nsproxy(task);
 if (nsproxy)
  ns = get_ipc_ns(nsproxy->ipc_ns);
 rcu_read_unlock();

 return ns;
}
