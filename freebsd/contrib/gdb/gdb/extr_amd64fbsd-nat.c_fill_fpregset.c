
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fpregset_t ;


 int amd64_fill_fxsave (char*,int) ;

void
fill_fpregset (fpregset_t *fpregsetp, int regnum)
{
  amd64_fill_fxsave ((char *) fpregsetp, regnum);
}
