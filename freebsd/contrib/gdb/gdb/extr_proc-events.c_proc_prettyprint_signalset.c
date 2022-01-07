
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int proc_prettyfprint_signalset (int ,int *,int) ;
 int stdout ;

void
proc_prettyprint_signalset (sigset_t *sigset, int verbose)
{
  proc_prettyfprint_signalset (stdout, sigset, verbose);
}
