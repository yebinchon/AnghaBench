
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysset_t ;
typedef int FILE ;


 int MAX_SYSCALLS ;
 int fprintf (int *,char*) ;
 scalar_t__ prismember (int *,int) ;
 int proc_prettyfprint_syscall (int *,int,int) ;

void
proc_prettyfprint_syscalls (FILE *file, sysset_t *sysset, int verbose)
{
  int i;

  for (i = 0; i < MAX_SYSCALLS; i++)
    if (prismember (sysset, i))
      {
 proc_prettyfprint_syscall (file, i, verbose);
      }
  fprintf (file, "\n");
}
