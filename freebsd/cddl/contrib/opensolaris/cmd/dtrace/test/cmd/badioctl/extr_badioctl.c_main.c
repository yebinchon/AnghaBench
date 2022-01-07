
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int WEXITED ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int WTERMSIG (int) ;
 int badioctl (scalar_t__) ;
 int exit (int ) ;
 int fflush (int ) ;
 scalar_t__ fork () ;
 scalar_t__ getpid () ;
 int printf (char*,int) ;
 int stdout ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

int
main()
{
 pid_t child, parent = getpid();
 int status;

 for (;;) {
  if ((child = fork()) == 0)
   badioctl(parent);

  while (waitpid(child, &status, WEXITED) != child)
   continue;

  if (WIFEXITED(status)) {




   exit(WEXITSTATUS(status));
  }




  printf("badioctl: child died on signal %d; respawning.\n",
      WTERMSIG(status));
  fflush(stdout);
 }


 return (0);
}
