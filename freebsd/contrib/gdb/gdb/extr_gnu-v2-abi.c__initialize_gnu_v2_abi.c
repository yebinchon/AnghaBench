
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shortname; } ;


 TYPE_1__ gnu_v2_abi_ops ;
 int init_gnuv2_ops () ;
 int register_cp_abi (TYPE_1__*) ;
 int set_cp_abi_as_auto_default (int ) ;

void
_initialize_gnu_v2_abi (void)
{
  init_gnuv2_ops ();
  register_cp_abi (&gnu_v2_abi_ops);
  set_cp_abi_as_auto_default (gnu_v2_abi_ops.shortname);
}
