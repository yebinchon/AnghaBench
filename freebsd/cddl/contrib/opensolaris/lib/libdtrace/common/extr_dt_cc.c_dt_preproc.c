
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int verdef ;
struct sigaction {int sa_handler; } ;
typedef int sigset_t ;
typedef int pid_t ;
typedef int opath ;
typedef int off_t ;
typedef int off64_t ;
typedef int ipath ;
struct TYPE_4__ {int dt_cpp_argc; int dt_vmax; int dt_stdcmode; int dt_cpp_path; int dt_cpp_argv; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int act ;
typedef int FILE ;





 scalar_t__ EDT_CPPENT ;
 scalar_t__ EDT_CPPERR ;
 scalar_t__ EDT_CPPEXEC ;
 scalar_t__ EDT_CPPFORK ;
 scalar_t__ EINTR ;
 scalar_t__ ENOENT ;
 int EOF ;
 int SEEK_SET ;
 int SIGCHLD ;
 int SIG_BLOCK ;
 int SIG_DFL ;
 int SIG_SETMASK ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 int _exit (int) ;
 int bcopy (int ,char**,int) ;
 int bzero (struct sigaction*,int) ;
 int dt_dprintf (char*,int ,int) ;
 int dt_set_errno (TYPE_1__*,scalar_t__) ;
 int dup2 (int,int) ;
 scalar_t__ errno ;
 int execvp (int ,char**) ;
 int fclose (int *) ;
 int fflush (int *) ;
 int fgetc (int *) ;
 int fileno (int *) ;
 int fork1 () ;
 int free (char**) ;
 int fseek (int *,int ,int ) ;
 int fseeko64 (int *,int,int ) ;
 int ftello64 (int *) ;
 scalar_t__ isatty (int) ;
 int lseek (int,int,int ) ;
 char** malloc (int) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int snprintf (char*,int,char*,int) ;
 int * tmpfile () ;
 int waitpid (int,int*,int ) ;

__attribute__((used)) static FILE *
dt_preproc(dtrace_hdl_t *dtp, FILE *ifp)
{
 int argc = dtp->dt_cpp_argc;
 char **argv = malloc(sizeof (char *) * (argc + 5));
 FILE *ofp = tmpfile();




 char verdef[32];

 struct sigaction act, oact;
 sigset_t mask, omask;

 int wstat, estat;
 pid_t pid;



 off_t off = 0;

 int c;

 if (argv == ((void*)0) || ofp == ((void*)0)) {
  (void) dt_set_errno(dtp, errno);
  goto err;
 }







 if (isatty(fileno(ifp)) == 0 && (off = ftello64(ifp)) != -1) {
  if ((c = fgetc(ifp)) == '#' && (c = fgetc(ifp)) == '!') {
   for (off += 2; c != '\n'; off++) {
    if ((c = fgetc(ifp)) == EOF)
     break;
   }
   if (c == '\n')
    off--;
  }
  (void) fflush(ifp);
  (void) fseeko64(ifp, off, SEEK_SET);
 }






 bcopy(dtp->dt_cpp_argv, argv, sizeof (char *) * argc);

 (void) snprintf(verdef, sizeof (verdef),
     "-D__SUNW_D_VERSION=0x%08x", dtp->dt_vmax);
 argv[argc++] = verdef;
 argv[argc++] = "-P";

 argv[argc] = ((void*)0);
 (void) sigemptyset(&mask);
 (void) sigaddset(&mask, SIGCHLD);
 (void) sigprocmask(SIG_BLOCK, &mask, &omask);

 bzero(&act, sizeof (act));
 act.sa_handler = SIG_DFL;
 (void) sigaction(SIGCHLD, &act, &oact);

 if ((pid = fork1()) == -1) {
  (void) sigaction(SIGCHLD, &oact, ((void*)0));
  (void) sigprocmask(SIG_SETMASK, &omask, ((void*)0));
  (void) dt_set_errno(dtp, EDT_CPPFORK);
  goto err;
 }

 if (pid == 0) {

  if (isatty(fileno(ifp)) == 0)
   lseek(fileno(ifp), off, SEEK_SET);
  dup2(fileno(ifp), 0);
  dup2(fileno(ofp), 1);

  (void) execvp(dtp->dt_cpp_path, argv);
  _exit(errno == ENOENT ? 127 : 126);
 }

 do {
  dt_dprintf("waiting for %s (PID %d)\n", dtp->dt_cpp_path,
      (int)pid);
 } while (waitpid(pid, &wstat, 0) == -1 && errno == EINTR);

 (void) sigaction(SIGCHLD, &oact, ((void*)0));
 (void) sigprocmask(SIG_SETMASK, &omask, ((void*)0));

 dt_dprintf("%s returned exit status 0x%x\n", dtp->dt_cpp_path, wstat);
 estat = WIFEXITED(wstat) ? WEXITSTATUS(wstat) : -1;

 if (estat != 0) {
  switch (estat) {
  case 126:
   (void) dt_set_errno(dtp, EDT_CPPEXEC);
   break;
  case 127:
   (void) dt_set_errno(dtp, EDT_CPPENT);
   break;
  default:
   (void) dt_set_errno(dtp, EDT_CPPERR);
  }
  goto err;
 }

 free(argv);
 (void) fflush(ofp);
 (void) fseek(ofp, 0, SEEK_SET);
 return (ofp);

err:
 free(argv);
 (void) fclose(ofp);
 return (((void*)0));
}
