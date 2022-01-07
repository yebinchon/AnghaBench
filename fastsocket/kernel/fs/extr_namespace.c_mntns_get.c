
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct nsproxy {void* mnt_ns; } ;
typedef void mnt_namespace ;


 int get_mnt_ns (void*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct nsproxy* task_nsproxy (struct task_struct*) ;

__attribute__((used)) static void *mntns_get(struct task_struct *task)
{
 struct mnt_namespace *ns = ((void*)0);
 struct nsproxy *nsproxy;

 rcu_read_lock();
 nsproxy = task_nsproxy(task);
 if (nsproxy) {
  ns = nsproxy->mnt_ns;
  get_mnt_ns(ns);
 }
 rcu_read_unlock();

 return ns;
}
