
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;
 char** syscall_table ;

void
proc_prettyfprint_syscall (FILE *file, int num, int verbose)
{
  if (syscall_table[num])
    fprintf (file, "SYS_%s ", syscall_table[num]);
  else
    fprintf (file, "<Unknown syscall %d> ", num);
}
