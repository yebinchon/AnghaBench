
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct sigaction {scalar_t__ sa_flags; int sa_mask; int sa_handler; } ;


 int SIGCHLD ;
 int SIG_SETMASK ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int add_target (struct target_ops*) ;
 int blocked_mask ;
 int debug_lin_lwp ;
 int init_lin_lwp_ops () ;
 struct target_ops lin_lwp_ops ;
 int no_class ;
 int normal_mask ;
 int setdebuglist ;
 int showdebuglist ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigchld_handler ;
 int sigdelset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int suspend_mask ;
 int var_zinteger ;

void
_initialize_lin_lwp (void)
{
  struct sigaction action;

  extern void thread_db_init (struct target_ops *);

  init_lin_lwp_ops ();
  add_target (&lin_lwp_ops);
  thread_db_init (&lin_lwp_ops);


  sigprocmask (SIG_SETMASK, ((void*)0), &normal_mask);

  action.sa_handler = sigchld_handler;
  sigemptyset (&action.sa_mask);
  action.sa_flags = 0;
  sigaction (SIGCHLD, &action, ((void*)0));


  sigprocmask (SIG_SETMASK, ((void*)0), &suspend_mask);
  sigdelset (&suspend_mask, SIGCHLD);

  sigemptyset (&blocked_mask);

  add_show_from_set (add_set_cmd ("lin-lwp", no_class, var_zinteger,
      (char *) &debug_lin_lwp,
      "Set debugging of GNU/Linux lwp module.\nEnables printf debugging output.\n", &setdebuglist), &showdebuglist);

}
