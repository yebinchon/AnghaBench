
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ process_state_t ;
typedef int lwpid_t ;
typedef int TTRACE_ARG_TYPE ;
typedef int CORE_ADDR ;


 int DONT_ATTACH_CONTINUE ;
 scalar_t__ STOPPED ;
 scalar_t__ TT_NIL ;
 int TT_PROC_STOP ;
 scalar_t__ VFORKING ;
 int attach (int) ;
 int call_real_ttrace (int ,int,int ,int ,int ,scalar_t__) ;
 scalar_t__ errno ;
 scalar_t__ process_state ;
 int update_thread_state_after_attach (int,int ) ;

int
hppa_require_attach (int pid)
{
  int tt_status;
  CORE_ADDR pc;
  CORE_ADDR pc_addr;
  unsigned int regs_offset;
  process_state_t old_process_state = process_state;







  errno = 0;
  tt_status = call_real_ttrace (TT_PROC_STOP,
    pid,
    (lwpid_t) TT_NIL,
    (TTRACE_ARG_TYPE) TT_NIL,
    (TTRACE_ARG_TYPE) TT_NIL,
    TT_NIL);

  if (errno)
    {


      errno = 0;
      pid = attach (pid);
    }
  else
    {




      if (process_state != VFORKING)
 process_state = STOPPED;
      update_thread_state_after_attach (pid, DONT_ATTACH_CONTINUE);
    }

  return pid;
}
