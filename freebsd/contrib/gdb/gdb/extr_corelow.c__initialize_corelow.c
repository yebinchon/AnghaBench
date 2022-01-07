
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_target (int *) ;
 int core_ops ;
 int coreops_suppress_target ;
 int init_core_ops () ;

void
_initialize_corelow (void)
{
  init_core_ops ();

  if (!coreops_suppress_target)
    add_target (&core_ops);
}
