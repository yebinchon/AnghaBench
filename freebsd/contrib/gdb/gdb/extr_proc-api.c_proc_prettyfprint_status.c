
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long PR_ISTOP ;
 long PR_STOPPED ;
 int fflush (scalar_t__) ;
 int fprintf (scalar_t__,char*,int) ;
 int prepare_to_trace () ;
 int proc_prettyfprint_flags (scalar_t__,long,int ) ;
 int proc_prettyfprint_why (scalar_t__,int,int,int ) ;
 scalar_t__ procfs_file ;
 scalar_t__ procfs_trace ;
 scalar_t__ stdout ;

void
proc_prettyfprint_status (long flags, int why, int what, int thread)
{
  prepare_to_trace ();
  if (procfs_trace)
    {
      if (thread)
 fprintf (procfs_file ? procfs_file : stdout,
   "Thread %d: ", thread);

      proc_prettyfprint_flags (procfs_file ? procfs_file : stdout,
          flags, 0);

      if (flags & (PR_STOPPED | PR_ISTOP))
 proc_prettyfprint_why (procfs_file ? procfs_file : stdout,
          why, what, 0);
      if (procfs_file)
 fflush (procfs_file);
    }
}
