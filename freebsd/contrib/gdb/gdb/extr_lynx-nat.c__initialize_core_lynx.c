
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_core_fns (int *) ;
 int lynx_core_fns ;

void
_initialize_core_lynx (void)
{
  add_core_fns (&lynx_core_fns);
}
