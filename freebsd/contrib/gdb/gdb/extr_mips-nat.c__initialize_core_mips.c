
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_core_fns (int *) ;
 int mips_core_fns ;

void
_initialize_core_mips (void)
{
  add_core_fns (&mips_core_fns);
}
