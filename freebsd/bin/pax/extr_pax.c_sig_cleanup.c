
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGXCPU ;
 int ar_close () ;
 int atdir_end () ;
 int exit (int) ;
 int paxwarn (int ,char*) ;
 int proc_dir () ;
 scalar_t__ tflag ;
 int vflag ;
 int vfpart ;

void
sig_cleanup(int which_sig)
{





 vflag = vfpart = 1;
 if (which_sig == SIGXCPU)
  paxwarn(0, "Cpu time limit reached, cleaning up.");
 else
  paxwarn(0, "Signal caught, cleaning up.");

 ar_close();
 proc_dir();
 if (tflag)
  atdir_end();
 exit(1);
}
