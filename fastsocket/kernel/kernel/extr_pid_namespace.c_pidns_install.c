
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {scalar_t__ level; struct pid_namespace* parent; } ;
struct nsproxy {int pid_ns; } ;


 int EINVAL ;
 int current ;
 int get_pid_ns (struct pid_namespace*) ;
 int put_pid_ns (int ) ;
 struct pid_namespace* task_active_pid_ns (int ) ;

__attribute__((used)) static int pidns_install(struct nsproxy *nsproxy, void *ns)
{
 struct pid_namespace *active = task_active_pid_ns(current);
 struct pid_namespace *ancestor, *new = ns;
 if (new->level < active->level)
  return -EINVAL;

 ancestor = new;
 while (ancestor->level > active->level)
  ancestor = ancestor->parent;
 if (ancestor != active)
  return -EINVAL;

 put_pid_ns(nsproxy->pid_ns);
 nsproxy->pid_ns = get_pid_ns(new);
 return 0;
}
