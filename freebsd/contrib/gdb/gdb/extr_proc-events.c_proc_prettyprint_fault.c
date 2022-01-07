
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int proc_prettyfprint_fault (int ,int,int) ;
 int stdout ;

void
proc_prettyprint_fault (int faultno, int verbose)
{
  proc_prettyfprint_fault (stdout, faultno, verbose);
}
