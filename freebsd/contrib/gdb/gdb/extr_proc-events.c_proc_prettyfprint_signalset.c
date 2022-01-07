
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;
typedef int FILE ;


 int NSIG ;
 int fprintf (int *,char*) ;
 scalar_t__ prismember (int *,int) ;
 int proc_prettyfprint_signal (int *,int,int) ;

void
proc_prettyfprint_signalset (FILE *file, sigset_t *sigset, int verbose)
{
  int i;

  for (i = 0; i < NSIG; i++)
    if (prismember (sigset, i))
      proc_prettyfprint_signal (file, i, verbose);

  if (!verbose)
    fprintf (file, "\n");
}
