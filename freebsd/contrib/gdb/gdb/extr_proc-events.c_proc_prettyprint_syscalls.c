
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysset_t ;


 int proc_prettyfprint_syscalls (int ,int *,int) ;
 int stdout ;

void
proc_prettyprint_syscalls (sysset_t *sysset, int verbose)
{
  proc_prettyfprint_syscalls (stdout, sysset, verbose);
}
