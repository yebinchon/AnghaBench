
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {size_t pid; int comm; } ;


 unsigned int NO_CMDLINE_MAP ;
 size_t PID_MAX_DEFAULT ;
 int SAVED_CMDLINES ;
 int TASK_COMM_LEN ;
 int __raw_spin_trylock (int *) ;
 int __raw_spin_unlock (int *) ;
 int cmdline_idx ;
 unsigned int* map_cmdline_to_pid ;
 unsigned int* map_pid_to_cmdline ;
 int memcpy (int *,int ,int ) ;
 int * saved_cmdlines ;
 int trace_cmdline_lock ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void trace_save_cmdline(struct task_struct *tsk)
{
 unsigned pid, idx;

 if (!tsk->pid || unlikely(tsk->pid > PID_MAX_DEFAULT))
  return;







 if (!__raw_spin_trylock(&trace_cmdline_lock))
  return;

 idx = map_pid_to_cmdline[tsk->pid];
 if (idx == NO_CMDLINE_MAP) {
  idx = (cmdline_idx + 1) % SAVED_CMDLINES;







  pid = map_cmdline_to_pid[idx];
  if (pid != NO_CMDLINE_MAP)
   map_pid_to_cmdline[pid] = NO_CMDLINE_MAP;

  map_cmdline_to_pid[idx] = tsk->pid;
  map_pid_to_cmdline[tsk->pid] = idx;

  cmdline_idx = idx;
 }

 memcpy(&saved_cmdlines[idx], tsk->comm, TASK_COMM_LEN);

 __raw_spin_unlock(&trace_cmdline_lock);
}
