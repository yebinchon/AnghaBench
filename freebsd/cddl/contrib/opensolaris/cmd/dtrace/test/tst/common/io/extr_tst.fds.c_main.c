
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;
typedef int fds ;


 int EXIT_FAILURE ;
 int O_APPEND ;
 int O_CREAT ;
 int O_NDELAY ;
 int O_NOCTTY ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_SYNC ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SEEK_SET ;
 int SIGUSR1 ;
 int assert (int) ;
 int closefrom (int ) ;
 int env ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int interrupt ;
 int ioctl (int,int ,int *) ;
 int lseek (int,int,int ) ;
 int open (char const*,int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 scalar_t__ sigsetjmp (int ,int) ;
 int stderr ;

int
main(int argc, char *argv[])
{
 const char *file = "/dev/null";
 int i, n, fds[10];
 struct sigaction act;

 if (argc > 1) {
  (void) fprintf(stderr, "Usage: %s\n", argv[0]);
  return (EXIT_FAILURE);
 }

 act.sa_handler = interrupt;
 act.sa_flags = 0;

 (void) sigemptyset(&act.sa_mask);
 (void) sigaction(SIGUSR1, &act, ((void*)0));

 closefrom(0);
 n = 0;





 if (sigsetjmp(env, 1) == 0) {
  for (;;)
   (void) ioctl(-1, 0, ((void*)0));
 }





 fds[n++] = open(file, O_RDONLY);
 fds[n++] = open(file, O_WRONLY);
 fds[n++] = open(file, O_RDWR);

 fds[n++] = open(file, O_RDWR | O_APPEND | O_CREAT |
     O_NOCTTY | O_NONBLOCK | O_NDELAY | O_SYNC | O_TRUNC | 0666);

 fds[n++] = open(file, O_RDWR);
 (void) lseek(fds[n - 1], 123, SEEK_SET);






 for (i = 0; i < n; i++)
  (void) ioctl(fds[i], 0, ((void*)0));

 assert(n <= sizeof (fds) / sizeof (fds[0]));
 exit(0);
}
