
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,char*,...) ;
 scalar_t__ info_verbose ;
 int prepare_to_trace () ;
 scalar_t__ procfs_file ;
 scalar_t__ procfs_trace ;
 scalar_t__ stdout ;

void
procfs_note (char *msg, char *file, int line)
{
  prepare_to_trace ();
  if (procfs_trace)
    {
      if (info_verbose)
 fprintf (procfs_file ? procfs_file : stdout,
   "%s:%d -- ", file, line);
      fprintf (procfs_file ? procfs_file : stdout, "%s", msg);
      if (procfs_file)
 fflush (procfs_file);
    }
}
