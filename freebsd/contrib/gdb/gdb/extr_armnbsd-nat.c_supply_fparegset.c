
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpreg {int fpr_fpsr; int * fpr; } ;


 int ARM_F0_REGNUM ;
 int ARM_F7_REGNUM ;
 int ARM_FPS_REGNUM ;
 int supply_register (int,char*) ;

__attribute__((used)) static void
supply_fparegset (struct fpreg *fparegset)
{
  int regno;

  for (regno = ARM_F0_REGNUM; regno <= ARM_F7_REGNUM; regno++)
    supply_register
      (regno, (char *) &fparegset->fpr[regno - ARM_F0_REGNUM]);

  supply_register (ARM_FPS_REGNUM, (char *) &fparegset->fpr_fpsr);
}
