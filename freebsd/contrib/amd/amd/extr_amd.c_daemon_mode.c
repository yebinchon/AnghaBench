
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;
typedef int sa ;
typedef int mode_t ;
struct TYPE_2__ {int flags; char* pid_file; } ;
typedef int FILE ;


 int CFM_PRINT_PID ;
 int SIGQUIT ;
 int SIG_DFL ;
 scalar_t__ STREQ (char*,char*) ;
 scalar_t__ am_mypid ;
 int amu_release_controlling_tty () ;
 int background () ;
 int errno ;
 int fclose (int *) ;
 int fflush (int ) ;
 int * fopen (char*,char*) ;
 int foreground ;
 int fprintf (int ,char*,...) ;
 int getppid () ;
 TYPE_1__ gopt ;
 int memset (struct sigaction*,int ,int) ;
 int parent_exit ;
 int pause () ;
 int printf (char*,long) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int signal (int ,int ) ;
 int stderr ;
 int stdout ;
 int umask (int) ;

__attribute__((used)) static int
daemon_mode(void)
{
  int bgpid;
  signal(SIGQUIT, parent_exit);


  bgpid = background();

  if (bgpid != 0) {




    for (;;)
      pause();

  }



  signal(SIGQUIT, SIG_DFL);





  if (gopt.flags & CFM_PRINT_PID) {
    if (STREQ(gopt.pid_file, "/dev/stdout")) {
      printf("%ld\n", (long) am_mypid);

      fflush(stdout);
    } else {
      FILE *f;
      mode_t prev_umask = umask(0022);

      f = fopen(gopt.pid_file, "w");
      if (f) {
 fprintf(f, "%ld\n", (long) am_mypid);
 (void) fclose(f);
      } else {
 fprintf(stderr, "cannot open %s (errno=%d)\n", gopt.pid_file, errno);
      }
      umask(prev_umask);
    }
  }




  foreground = 1;




  amu_release_controlling_tty();

  return getppid();
}
