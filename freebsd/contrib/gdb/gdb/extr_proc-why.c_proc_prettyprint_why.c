
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proc_prettyfprint_why (int ,unsigned long,unsigned long,int) ;
 int stdout ;

void
proc_prettyprint_why (unsigned long why, unsigned long what, int verbose)
{
  proc_prettyfprint_why (stdout, why, what, verbose);
}
