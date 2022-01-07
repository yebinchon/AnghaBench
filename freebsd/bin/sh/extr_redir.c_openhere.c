
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* expdoc; TYPE_2__* doc; } ;
union node {scalar_t__ type; TYPE_3__ nhere; } ;
struct job {int dummy; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_4__ {char* text; } ;
struct TYPE_5__ {TYPE_1__ narg; } ;


 int FORK_NOJOB ;
 int F_GETFL ;
 int F_SETFL ;
 scalar_t__ NXHERE ;
 int O_NONBLOCK ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTSTP ;
 int SIG_DFL ;
 int SIG_IGN ;
 int _exit (int ) ;
 int close (int) ;
 int errno ;
 int error (char*,int ) ;
 int fcntl (int,int ,int) ;
 scalar_t__ forkshell (struct job*,union node*,int ) ;
 scalar_t__ pipe (int*) ;
 int signal (int ,int ) ;
 int strerror (int ) ;
 size_t strlen (char const*) ;
 scalar_t__ write (int,char const*,size_t) ;
 int xwrite (int,char const*,scalar_t__) ;

__attribute__((used)) static int
openhere(union node *redir)
{
 const char *p;
 int pip[2];
 size_t len = 0;
 int flags;
 ssize_t written = 0;

 if (pipe(pip) < 0)
  error("Pipe call failed: %s", strerror(errno));

 if (redir->type == NXHERE)
  p = redir->nhere.expdoc;
 else
  p = redir->nhere.doc->narg.text;
 len = strlen(p);
 if (len == 0)
  goto out;
 flags = fcntl(pip[1], F_GETFL, 0);
 if (flags != -1 && fcntl(pip[1], F_SETFL, flags | O_NONBLOCK) != -1) {
  written = write(pip[1], p, len);
  if (written < 0)
   written = 0;
  if ((size_t)written == len)
   goto out;
  fcntl(pip[1], F_SETFL, flags);
 }

 if (forkshell((struct job *)((void*)0), (union node *)((void*)0), FORK_NOJOB) == 0) {
  close(pip[0]);
  signal(SIGINT, SIG_IGN);
  signal(SIGQUIT, SIG_IGN);
  signal(SIGHUP, SIG_IGN);
  signal(SIGTSTP, SIG_IGN);
  signal(SIGPIPE, SIG_DFL);
  xwrite(pip[1], p + written, len - written);
  _exit(0);
 }
out:
 close(pip[1]);
 return pip[0];
}
