
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 char const* P_tmpdir ;
 int SIGINT ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int TMPDIR_ENV ;
 int errno ;
 char* getenv (int ) ;
 int mkstemp (char*) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* tmpname ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static int
temporary_file (void)
{
  char const *tmpdir = getenv (TMPDIR_ENV);
  char const *dir = tmpdir ? tmpdir : P_tmpdir;
  char *buf = xmalloc (strlen (dir) + 1 + 5 + 6 + 1);
  int fd;
  int e;
  sigset_t procmask;
  sigset_t blocked;
  sprintf (buf, "%s/sdiffXXXXXX", dir);
  sigemptyset (&blocked);
  sigaddset (&blocked, SIGINT);
  sigprocmask (SIG_BLOCK, &blocked, &procmask);
  fd = mkstemp (buf);
  e = errno;
  if (0 <= fd)
    tmpname = buf;
  sigprocmask (SIG_SETMASK, &procmask, 0);
  errno = e;
  return fd;
}
