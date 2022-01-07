
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THREAD_FETCH_REGISTERS () ;
 scalar_t__ current_task ;
 scalar_t__ current_task_id ;
 int flush_cached_frames () ;
 int fpregset_saved ;
 int get_current_frame () ;
 int gregset_saved ;
 int read_pc () ;
 int select_frame (int ) ;
 int stop_pc ;
 int supply_fpregset (int *) ;
 int supply_gregset (int *) ;
 scalar_t__ thread_support ;

__attribute__((used)) static int
task_switch (void *tid, void *lwpid)
{
  int res = 0, pid;

  if (thread_support)
    {
      flush_cached_frames ();

      if (current_task != current_task_id)
 {
   res = THREAD_FETCH_REGISTERS ();
 }
      else
 {




 }

      if (res == 0)
 stop_pc = read_pc ();
      select_frame (get_current_frame ());
      return res;
    }

  return -1;
}
