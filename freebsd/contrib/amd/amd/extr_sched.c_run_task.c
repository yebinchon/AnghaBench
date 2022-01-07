
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ wchan_t ;
typedef int (* task_fun ) (int ) ;
typedef int sigset_t ;
struct TYPE_3__ {int pid; scalar_t__ wchan; } ;
typedef TYPE_1__ pjob ;
typedef int opaque_t ;
typedef int cb_fun ;


 int SIGCHLD ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int abort () ;
 int background () ;
 int exit (int ) ;
 TYPE_1__* sched_job (int *,int ) ;
 int sigaddset (int*,int ) ;
 int sigblock (int ) ;
 int sigemptyset (int*) ;
 int sigmask (int ) ;
 int sigprocmask (int ,int*,int*) ;
 int sigsetmask (int) ;
 int stub1 (int ) ;

void
run_task(task_fun *tf, opaque_t ta, cb_fun *cf, opaque_t ca)
{
  pjob *p = sched_job(cf, ca);



  int mask;


  p->wchan = (wchan_t) p;






  mask = sigblock(sigmask(SIGCHLD));


  if ((p->pid = background())) {



    sigsetmask(mask);

    return;
  }



  exit((*tf) (ta));

  abort();
}
