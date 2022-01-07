
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sigset_t ;
typedef int pid_t ;
typedef scalar_t__ opaque_t ;
struct TYPE_3__ {int* am_fd; } ;
typedef TYPE_1__ am_node ;


 int SIGCHLD ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int background () ;
 int close (int) ;
 int dlog (char*) ;
 scalar_t__ errno ;
 TYPE_1__* find_ap (char*) ;
 int pipe (int*) ;
 int sigaddset (int*,int ) ;
 int sigblock (int) ;
 int sigemptyset (int*) ;
 int sigmask (int ) ;
 int sigprocmask (int ,int*,int*) ;
 int sigsetmask (int) ;

__attribute__((used)) static int
amq_fork(opaque_t argp)
{



  int mask;

  am_node *mp;
  pid_t pid;

  mp = find_ap(*(char **) argp);
  if (mp == ((void*)0)) {
    errno = 0;
    return -1;
  }

  if (pipe(mp->am_fd) == -1) {
    mp->am_fd[0] = -1;
    mp->am_fd[1] = -1;
    return -1;
  }
  mask =
      sigmask(SIGHUP) |
      sigmask(SIGINT) |
      sigmask(SIGQUIT) |
      sigmask(SIGCHLD);
  mask = sigblock(mask);


  switch ((pid = background())) {
  case -1:
    dlog("amq_fork failed");
    return -1;

  case 0:
    close(mp->am_fd[1]);
    mp->am_fd[1] = -1;
    return 0;

  default:
    close(mp->am_fd[0]);
    mp->am_fd[0] = -1;




    sigsetmask(mask);

    return pid;
  }
}
