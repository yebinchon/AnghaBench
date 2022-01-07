
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_mourn_inferior ) () ;} ;


 int SIG_SETMASK ;
 int blocked_mask ;
 TYPE_1__ child_ops ;
 int init_lwp_list () ;
 int normal_mask ;
 int null_ptid ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int stub1 () ;
 int trap_ptid ;

__attribute__((used)) static void
lin_lwp_mourn_inferior (void)
{
  trap_ptid = null_ptid;


  init_lwp_list ();


  sigprocmask (SIG_SETMASK, &normal_mask, ((void*)0));
  sigemptyset (&blocked_mask);

  child_ops.to_mourn_inferior ();
}
