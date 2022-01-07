
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int get_task_struct (struct task_struct*) ;
 struct task_struct* next_thread (struct task_struct*) ;
 scalar_t__ pid_alive (struct task_struct*) ;
 int put_task_struct (struct task_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ thread_group_leader (struct task_struct*) ;

__attribute__((used)) static struct task_struct *next_tid(struct task_struct *start)
{
 struct task_struct *pos = ((void*)0);
 rcu_read_lock();
 if (pid_alive(start)) {
  pos = next_thread(start);
  if (thread_group_leader(pos))
   pos = ((void*)0);
  else
   get_task_struct(pos);
 }
 rcu_read_unlock();
 put_task_struct(start);
 return pos;
}
