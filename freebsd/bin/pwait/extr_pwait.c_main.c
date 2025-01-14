
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef double time_t ;
typedef int suseconds_t ;
struct kevent {uintptr_t ident; scalar_t__ filter; int data; } ;
struct TYPE_2__ {double tv_sec; int tv_usec; } ;
struct itimerval {TYPE_1__ it_value; } ;
typedef int itv ;


 scalar_t__ ERANGE ;
 scalar_t__ EVFILT_PROC ;
 scalar_t__ EVFILT_SIGNAL ;
 int EV_ADD ;
 int EV_SET (struct kevent*,long,scalar_t__,int ,int ,int ,int *) ;
 int EX_DATAERR ;
 int EX_OK ;
 int EX_OSERR ;
 int ITIMER_REAL ;
 int NOTE_EXIT ;
 long SIGALRM ;
 int SIG_IGN ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int ,char*) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int kevent (int,struct kevent*,int,struct kevent*,int,int *) ;
 int kqueue () ;
 struct kevent* malloc (int) ;
 int memset (struct itimerval*,int ,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,...) ;
 int setitimer (int ,struct itimerval*,int *) ;
 int signal (long,int ) ;
 int strncmp (char*,char*,int) ;
 double strtod (char*,char**) ;
 long strtol (char*,char**,int) ;
 int usage () ;
 int warn (char*,long) ;
 int warnx (char*,char*) ;

int
main(int argc, char *argv[])
{
 struct itimerval itv;
 int kq;
 struct kevent *e;
 int tflag, verbose;
 int opt, nleft, n, i, duplicate, status;
 long pid;
 char *s, *end;
 double timeout;

 tflag = verbose = 0;
 memset(&itv, 0, sizeof(itv));
 while ((opt = getopt(argc, argv, "t:v")) != -1) {
  switch (opt) {
  case 't':
   tflag = 1;
   errno = 0;
   timeout = strtod(optarg, &end);
   if (end == optarg || errno == ERANGE ||
       timeout < 0)
    errx(EX_DATAERR, "timeout value");
   switch(*end) {
   case 0:
   case 's':
    break;
   case 'h':
    timeout *= 60;

   case 'm':
    timeout *= 60;
    break;
   default:
    errx(EX_DATAERR, "timeout unit");
   }
   if (timeout > 100000000L)
    errx(EX_DATAERR, "timeout value");
   itv.it_value.tv_sec = (time_t)timeout;
   timeout -= (time_t)timeout;
   itv.it_value.tv_usec =
       (suseconds_t)(timeout * 1000000UL);
   break;
  case 'v':
   verbose = 1;
   break;
  default:
   usage();

  }
 }

 argc -= optind;
 argv += optind;

 if (argc == 0)
  usage();

 kq = kqueue();
 if (kq == -1)
  err(1, "kqueue");

 e = malloc((argc + tflag) * sizeof(struct kevent));
 if (e == ((void*)0))
  err(1, "malloc");
 nleft = 0;
 for (n = 0; n < argc; n++) {
  s = argv[n];
  if (!strncmp(s, "/proc/", 6))
   s += 6;
  errno = 0;
  pid = strtol(s, &end, 10);
  if (pid < 0 || *end != '\0' || errno != 0) {
   warnx("%s: bad process id", s);
   continue;
  }
  duplicate = 0;
  for (i = 0; i < nleft; i++)
   if (e[i].ident == (uintptr_t)pid)
    duplicate = 1;
  if (!duplicate) {
   EV_SET(e + nleft, pid, EVFILT_PROC, EV_ADD, NOTE_EXIT,
       0, ((void*)0));
   if (kevent(kq, e + nleft, 1, ((void*)0), 0, ((void*)0)) == -1)
    warn("%ld", pid);
   else
    nleft++;
  }
 }

 if (tflag) {




  EV_SET(e + nleft, SIGALRM, EVFILT_SIGNAL, EV_ADD, 0, 0, ((void*)0));
  if (kevent(kq, e + nleft, 1, ((void*)0), 0, ((void*)0)) == -1)
   err(EX_OSERR, "kevent");

  signal(SIGALRM, SIG_IGN);
  if (setitimer(ITIMER_REAL, &itv, ((void*)0)) == -1)
   err(EX_OSERR, "setitimer");
 }
 while (nleft > 0) {
  n = kevent(kq, ((void*)0), 0, e, nleft + tflag, ((void*)0));
  if (n == -1)
   err(1, "kevent");
  for (i = 0; i < n; i++) {
   if (e[i].filter == EVFILT_SIGNAL) {
    if (verbose)
     printf("timeout\n");
    return (124);
   }
   if (verbose) {
    status = e[i].data;
    if (WIFEXITED(status))
     printf("%ld: exited with status %d.\n",
         (long)e[i].ident,
         WEXITSTATUS(status));
    else if (WIFSIGNALED(status))
     printf("%ld: killed by signal %d.\n",
         (long)e[i].ident,
         WTERMSIG(status));
    else
     printf("%ld: terminated.\n",
         (long)e[i].ident);
   }
   --nleft;
  }
 }

 exit(EX_OK);
}
