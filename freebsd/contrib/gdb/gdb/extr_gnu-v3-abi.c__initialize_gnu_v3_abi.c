
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gnu_v3_abi_ops ;
 int init_gnuv3_ops () ;
 int register_cp_abi (int *) ;

void
_initialize_gnu_v3_abi (void)
{
  init_gnuv3_ops ();

  register_cp_abi (&gnu_v3_abi_ops);
}
