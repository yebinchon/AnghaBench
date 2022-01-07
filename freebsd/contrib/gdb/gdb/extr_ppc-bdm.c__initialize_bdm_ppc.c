
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_target (int *) ;
 int bdm_ppc_ops ;
 int init_bdm_ppc_ops () ;

void
_initialize_bdm_ppc (void)
{
  init_bdm_ppc_ops ();
  add_target (&bdm_ppc_ops);
}
