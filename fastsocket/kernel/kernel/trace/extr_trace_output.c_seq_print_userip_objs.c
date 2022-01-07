
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct userstack_entry {unsigned long* caller; int tgid; } ;
struct trace_seq {int dummy; } ;
struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;


 unsigned int FTRACE_STACK_ENTRIES ;
 int TRACE_ITER_SYM_USEROBJ ;
 unsigned long ULONG_MAX ;
 struct task_struct* find_task_by_vpid (int ) ;
 struct mm_struct* get_task_mm (struct task_struct*) ;
 int mmput (struct mm_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seq_print_user_ip (struct trace_seq*,struct mm_struct*,unsigned long,unsigned long) ;
 int trace_flags ;
 int trace_seq_puts (struct trace_seq*,char*) ;

int
seq_print_userip_objs(const struct userstack_entry *entry, struct trace_seq *s,
        unsigned long sym_flags)
{
 struct mm_struct *mm = ((void*)0);
 int ret = 1;
 unsigned int i;

 if (trace_flags & TRACE_ITER_SYM_USEROBJ) {
  struct task_struct *task;




  rcu_read_lock();
  task = find_task_by_vpid(entry->tgid);
  if (task)
   mm = get_task_mm(task);
  rcu_read_unlock();
 }

 for (i = 0; i < FTRACE_STACK_ENTRIES; i++) {
  unsigned long ip = entry->caller[i];

  if (ip == ULONG_MAX || !ret)
   break;
  if (ret)
   ret = trace_seq_puts(s, " => ");
  if (!ip) {
   if (ret)
    ret = trace_seq_puts(s, "??");
   if (ret)
    ret = trace_seq_puts(s, "\n");
   continue;
  }
  if (!ret)
   break;
  if (ret)
   ret = seq_print_user_ip(s, mm, ip, sym_flags);
  ret = trace_seq_puts(s, "\n");
 }

 if (mm)
  mmput(mm);
 return ret;
}
