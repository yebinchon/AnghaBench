
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union node {int dummy; } node ;
struct stackmark {int dummy; } ;
struct localvar {int dummy; } ;
struct job {int dummy; } ;
struct jmploc {int loc; } ;
struct backcmd {int fd; struct job* jp; scalar_t__ nleft; int * buf; } ;
struct TYPE_2__ {unsigned char reset; } ;


 int EV_BACKCMD ;
 int EV_EXIT ;
 scalar_t__ EXERROR ;
 int FORCEINTON ;
 int FORK_NOJOB ;
 int TRACE (char*) ;
 int close (int) ;
 int dup2 (int,int) ;
 int errno ;
 int error (char*,int ) ;
 int evalcommand (union node*,int ,struct backcmd*) ;
 int evaltree (union node*,int ) ;
 scalar_t__ exception ;
 scalar_t__ exitstatus ;
 int forcelocal ;
 scalar_t__ forkshell (struct job*,union node*,int ) ;
 struct jmploc* handler ;
 scalar_t__ is_valid_fast_cmdsubst (union node*) ;
 struct localvar* localvars ;
 int longjmp (int ,int) ;
 struct job* makejob (union node*,int) ;
 scalar_t__ oexitstatus ;
 scalar_t__ pipe (int*) ;
 int poplocalvars () ;
 int popstackmark (struct stackmark*) ;
 scalar_t__ setjmp (int ) ;
 int setstackmark (struct stackmark*) ;
 TYPE_1__ shellparam ;
 int strerror (int ) ;

void
evalbackcmd(union node *n, struct backcmd *result)
{
 int pip[2];
 struct job *jp;
 struct stackmark smark;
 struct jmploc jmploc;
 struct jmploc *savehandler;
 struct localvar *savelocalvars;
 unsigned char saveoptreset;

 result->fd = -1;
 result->buf = ((void*)0);
 result->nleft = 0;
 result->jp = ((void*)0);
 if (n == ((void*)0)) {
  exitstatus = 0;
  return;
 }
 setstackmark(&smark);
 exitstatus = oexitstatus;
 if (is_valid_fast_cmdsubst(n)) {
  savelocalvars = localvars;
  localvars = ((void*)0);
  saveoptreset = shellparam.reset;
  forcelocal++;
  savehandler = handler;
  if (setjmp(jmploc.loc)) {
   if (exception == EXERROR)
                 ;
   else if (exception != 0) {
    handler = savehandler;
    forcelocal--;
    poplocalvars();
    localvars = savelocalvars;
    shellparam.reset = saveoptreset;
    longjmp(handler->loc, 1);
   }
  } else {
   handler = &jmploc;
   evalcommand(n, EV_BACKCMD, result);
  }
  handler = savehandler;
  forcelocal--;
  poplocalvars();
  localvars = savelocalvars;
  shellparam.reset = saveoptreset;
 } else {
  if (pipe(pip) < 0)
   error("Pipe call failed: %s", strerror(errno));
  jp = makejob(n, 1);
  if (forkshell(jp, n, FORK_NOJOB) == 0) {
   FORCEINTON;
   close(pip[0]);
   if (pip[1] != 1) {
    dup2(pip[1], 1);
    close(pip[1]);
   }
   evaltree(n, EV_EXIT);
  }
  close(pip[1]);
  result->fd = pip[0];
  result->jp = jp;
 }
 popstackmark(&smark);
 TRACE(("evalbackcmd done: fd=%d buf=%p nleft=%d jp=%p\n",
  result->fd, result->buf, result->nleft, result->jp));
}
