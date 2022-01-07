
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 scalar_t__ errno ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,...) ;
 scalar_t__ info_verbose ;
 int prepare_to_trace () ;
 scalar_t__ procfs_file ;
 scalar_t__ procfs_trace ;
 char* safe_strerror (scalar_t__) ;
 scalar_t__ stdout ;

int
close_with_trace (int fd, char *file, int line)
{
  int ret;

  prepare_to_trace ();
  errno = 0;
  ret = close (fd);
  if (procfs_trace)
    {
      if (info_verbose)
 fprintf (procfs_file ? procfs_file : stdout,
   "%s:%d -- ", file, line);
      if (errno)
 fprintf (procfs_file ? procfs_file : stdout,
   "[close FAILED! (%s)]\n", safe_strerror (errno));
      else
 fprintf (procfs_file ? procfs_file : stdout,
   "%d = close (%d)\n", ret, fd);
      if (procfs_file)
 fflush (procfs_file);
    }

  return ret;
}
