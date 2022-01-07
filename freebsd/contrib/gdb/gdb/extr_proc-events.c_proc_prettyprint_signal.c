
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proc_prettyfprint_signal (int ,int,int) ;
 int stdout ;

void
proc_prettyprint_signal (int signo, int verbose)
{
  proc_prettyfprint_signal (stdout, signo, verbose);
}
