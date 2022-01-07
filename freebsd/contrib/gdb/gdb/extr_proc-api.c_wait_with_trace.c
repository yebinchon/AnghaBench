
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 scalar_t__ errno ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,...) ;
 scalar_t__ info_verbose ;
 int prepare_to_trace () ;
 scalar_t__ procfs_file ;
 scalar_t__ procfs_trace ;
 char* safe_strerror (scalar_t__) ;
 scalar_t__ stdout ;
 int wait (int*) ;

pid_t
wait_with_trace (int *wstat, char *file, int line)
{
  int ret, lstat = 0;

  prepare_to_trace ();
  if (procfs_trace)
    {
      if (info_verbose)
 fprintf (procfs_file ? procfs_file : stdout,
   "%s:%d -- ", file, line);
      fprintf (procfs_file ? procfs_file : stdout,
        "wait (line %d) ", line);
      if (procfs_file)
 fflush (procfs_file);
    }
  errno = 0;
  ret = wait (&lstat);
  if (procfs_trace)
    {
      if (errno)
 fprintf (procfs_file ? procfs_file : stdout,
   "[wait FAILED! (%s)]\n", safe_strerror (errno));
      else
 fprintf (procfs_file ? procfs_file : stdout,
   "returned pid %d, status 0x%x\n", ret, lstat);
      if (procfs_file)
 fflush (procfs_file);
    }
  if (wstat)
    *wstat = lstat;

  return ret;
}
