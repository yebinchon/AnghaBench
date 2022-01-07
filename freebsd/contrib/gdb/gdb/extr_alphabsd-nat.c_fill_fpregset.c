
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fpregset_t ;


 int alphabsd_fill_fpreg (char*,int) ;

void
fill_fpregset (fpregset_t *fpregsetp, int regno)
{
  alphabsd_fill_fpreg ((char *) fpregsetp, regno);
}
