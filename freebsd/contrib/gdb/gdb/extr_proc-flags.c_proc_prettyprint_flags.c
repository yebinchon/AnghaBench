
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proc_prettyfprint_flags (int ,unsigned long,int) ;
 int stdout ;

void
proc_prettyprint_flags (unsigned long flags, int verbose)
{
  proc_prettyfprint_flags (stdout, flags, verbose);
}
