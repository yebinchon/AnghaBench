
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct nsproxy {int net_ns; } ;
struct net {int dummy; } ;
struct inode {int dummy; } ;


 int PIDTYPE_PID ;
 struct net* get_net (int ) ;
 struct task_struct* pid_task (int ,int ) ;
 int proc_pid (struct inode*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct nsproxy* task_nsproxy (struct task_struct*) ;

__attribute__((used)) static struct net *get_proc_task_net(struct inode *dir)
{
 struct task_struct *task;
 struct nsproxy *ns;
 struct net *net = ((void*)0);

 rcu_read_lock();
 task = pid_task(proc_pid(dir), PIDTYPE_PID);
 if (task != ((void*)0)) {
  ns = task_nsproxy(task);
  if (ns != ((void*)0))
   net = get_net(ns->net_ns);
 }
 rcu_read_unlock();

 return net;
}
