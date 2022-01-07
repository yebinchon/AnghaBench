
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct task_struct* group_leader; } ;
struct pid_namespace {int dummy; } ;


 struct task_struct* find_task_by_pid_ns (int,struct pid_namespace*) ;
 int get_nr_threads (struct task_struct*) ;
 int get_task_struct (struct task_struct*) ;
 struct task_struct* next_thread (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct task_struct *first_tid(struct task_struct *leader,
  int tid, int nr, struct pid_namespace *ns)
{
 struct task_struct *pos;

 rcu_read_lock();

 if (tid && (nr > 0)) {
  pos = find_task_by_pid_ns(tid, ns);
  if (pos && (pos->group_leader == leader))
   goto found;
 }


 pos = ((void*)0);
 if (nr && nr >= get_nr_threads(leader))
  goto out;




 for (pos = leader; nr > 0; --nr) {
  pos = next_thread(pos);
  if (pos == leader) {
   pos = ((void*)0);
   goto out;
  }
 }
found:
 get_task_struct(pos);
out:
 rcu_read_unlock();
 return pos;
}
