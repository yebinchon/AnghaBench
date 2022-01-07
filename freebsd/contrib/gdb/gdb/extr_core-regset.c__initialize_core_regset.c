
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_core_fns (int *) ;
 int regset_core_fns ;

void
_initialize_core_regset (void)
{
  add_core_fns (&regset_core_fns);
}
