
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXPATHLEN ;
 int make_cleanup (int ,char*) ;
 scalar_t__ readlink (char*,char*,int ) ;
 int xasprintf (char**,char*,int) ;
 char* xcalloc (int ,int) ;
 int xfree ;

char *
child_pid_to_exec_file (int pid)
{
  char *path;
  char *buf;

  xasprintf (&path, "/proc/%d/file", pid);
  buf = xcalloc (MAXPATHLEN, sizeof (char));
  make_cleanup (xfree, path);
  make_cleanup (xfree, buf);

  if (readlink (path, buf, MAXPATHLEN) > 0)
    return buf;

  return ((void*)0);
}
