
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procstat {int pid; int status; int cmd; } ;
struct job {int foreground; int nprocs; struct procstat* ps; } ;
struct jmploc {int loc; } ;
typedef int pid_t ;


 int INTOFF ;
 int INTON ;
 int TRACE (char*) ;
 int _exit (int ) ;
 int close (int) ;
 int dup2 (int,int) ;
 int errno ;
 int error (char*,int ) ;
 int exitstatus ;
 int flushall () ;
 scalar_t__ getpid () ;
 struct jmploc* handler ;
 int jobtab ;
 int nullstr ;
 int setcurjob (struct job*) ;
 scalar_t__ setjmp (int ) ;
 int shellexec (char**,char**,char const*,int) ;
 int strerror (int ) ;
 int vfork () ;

pid_t
vforkexecshell(struct job *jp, char **argv, char **envp, const char *path, int idx, int pip[2])
{
 pid_t pid;
 struct jmploc jmploc;
 struct jmploc *savehandler;

 TRACE(("vforkexecshell(%%%td, %s, %p) called\n", jp - jobtab, argv[0],
     (void *)pip));
 INTOFF;
 flushall();
 savehandler = handler;
 pid = vfork();
 if (pid == -1) {
  TRACE(("Vfork failed, errno=%d\n", errno));
  INTON;
  error("Cannot fork: %s", strerror(errno));
 }
 if (pid == 0) {
  TRACE(("Child shell %d\n", (int)getpid()));
  if (setjmp(jmploc.loc))
   _exit(exitstatus);
  if (pip != ((void*)0)) {
   close(pip[0]);
   if (pip[1] != 1) {
    dup2(pip[1], 1);
    close(pip[1]);
   }
  }
  handler = &jmploc;
  shellexec(argv, envp, path, idx);
 }
 handler = savehandler;
 if (jp) {
  struct procstat *ps = &jp->ps[jp->nprocs++];
  ps->pid = pid;
  ps->status = -1;
  ps->cmd = nullstr;
  jp->foreground = 1;



 }
 INTON;
 TRACE(("In parent shell:  child = %d\n", (int)pid));
 return pid;
}
