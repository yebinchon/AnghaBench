
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fltset_t ;


 int proc_prettyfprint_faultset (int ,int *,int) ;
 int stdout ;

void
proc_prettyprint_faultset (fltset_t *fltset, int verbose)
{
  proc_prettyfprint_faultset (stdout, fltset, verbose);
}
