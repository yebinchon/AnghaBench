
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_reg_autoinc () ;
 int init_reg_sets_1 () ;

void
init_regs (void)
{


  init_reg_sets_1 ();

  init_reg_autoinc ();
}
