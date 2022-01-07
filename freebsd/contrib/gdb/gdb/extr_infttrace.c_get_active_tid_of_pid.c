
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttstate_t ;
typedef int lwpid_t ;


 int get_process_first_stopped_thread_id (int,int *) ;

__attribute__((used)) static lwpid_t
get_active_tid_of_pid (int pid)
{
  ttstate_t thread_state;

  return get_process_first_stopped_thread_id (pid, &thread_state);
}
