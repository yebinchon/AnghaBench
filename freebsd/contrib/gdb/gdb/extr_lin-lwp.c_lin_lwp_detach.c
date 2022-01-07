
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_detach ) (char*,int) ;} ;


 int GET_PID (int ) ;
 int SIG_SETMASK ;
 int blocked_mask ;
 TYPE_1__ child_ops ;
 int detach_callback ;
 int gdb_assert (int) ;
 int inferior_ptid ;
 int init_lwp_list () ;
 int iterate_over_lwps (int ,int *) ;
 int normal_mask ;
 int null_ptid ;
 int num_lwps ;
 int pid_to_ptid (int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int stub1 (char*,int) ;
 int trap_ptid ;

__attribute__((used)) static void
lin_lwp_detach (char *args, int from_tty)
{
  iterate_over_lwps (detach_callback, ((void*)0));


  gdb_assert (num_lwps == 1);

  trap_ptid = null_ptid;


  init_lwp_list ();


  sigprocmask (SIG_SETMASK, &normal_mask, ((void*)0));
  sigemptyset (&blocked_mask);

  inferior_ptid = pid_to_ptid (GET_PID (inferior_ptid));
  child_ops.to_detach (args, from_tty);
}
