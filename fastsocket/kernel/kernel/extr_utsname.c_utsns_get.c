
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uts_namespace ;
struct task_struct {int dummy; } ;
struct nsproxy {void* uts_ns; } ;


 int get_uts_ns (void*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct nsproxy* task_nsproxy (struct task_struct*) ;

__attribute__((used)) static void *utsns_get(struct task_struct *task)
{
 struct uts_namespace *ns = ((void*)0);
 struct nsproxy *nsproxy;

 rcu_read_lock();
 nsproxy = task_nsproxy(task);
 if (nsproxy) {
  ns = nsproxy->uts_ns;
  get_uts_ns(ns);
 }
 rcu_read_unlock();

 return ns;
}
