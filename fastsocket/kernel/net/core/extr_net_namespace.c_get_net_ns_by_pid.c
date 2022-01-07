
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct nsproxy {int net_ns; } ;
struct net {int dummy; } ;
typedef int pid_t ;


 struct net* ERR_PTR (int ) ;
 int ESRCH ;
 struct task_struct* find_task_by_vpid (int ) ;
 struct net* get_net (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct nsproxy* task_nsproxy (struct task_struct*) ;

struct net *get_net_ns_by_pid(pid_t pid)
{
 struct task_struct *tsk;
 struct net *net;


 net = ERR_PTR(-ESRCH);
 rcu_read_lock();
 tsk = find_task_by_vpid(pid);
 if (tsk) {
  struct nsproxy *nsproxy;
  nsproxy = task_nsproxy(tsk);
  if (nsproxy)
   net = get_net(nsproxy->net_ns);
 }
 rcu_read_unlock();
 return net;
}
