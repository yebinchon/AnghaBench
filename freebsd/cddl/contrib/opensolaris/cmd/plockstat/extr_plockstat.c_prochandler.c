
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps_prochandle {int dummy; } ;
typedef int psinfo_t ;
typedef int name ;
struct TYPE_2__ {int pr_pid; } ;




 int * Ppsinfo (struct ps_prochandle*) ;
 int Pstate (struct ps_prochandle*) ;
 TYPE_1__* Pstatus (struct ps_prochandle*) ;
 int SIG2STR_MAX ;
 int WEXITSTATUS (int) ;
 int WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int g_exited ;
 int notice (char*,int,...) ;
 int proc_getpid (struct ps_prochandle*) ;
 int proc_getwstat (struct ps_prochandle*) ;
 int proc_signame (int ,char*,int) ;

__attribute__((used)) static void
prochandler(struct ps_prochandle *P, const char *msg, void *arg)
{




 int pid = proc_getpid(P);
 int wstat = proc_getwstat(P);

 char name[SIG2STR_MAX];

 if (msg != ((void*)0)) {
  notice("pid %d: %s\n", pid, msg);
  return;
 }

 switch (Pstate(P)) {
 case 128:
  if (WIFSIGNALED(wstat)) {
   notice("pid %d terminated by %s\n", pid,
       proc_signame(WTERMSIG(wstat),
       name, sizeof (name)));
  } else if (WEXITSTATUS(wstat) != 0) {
   notice("pid %d exited with status %d\n",
       pid, WEXITSTATUS(wstat));
  } else {
   notice("pid %d has exited\n", pid);
  }
  g_exited = 1;
  break;

 case 129:
  notice("pid %d exec'd a set-id or unobservable program\n", pid);
  g_exited = 1;
  break;
 }
}
