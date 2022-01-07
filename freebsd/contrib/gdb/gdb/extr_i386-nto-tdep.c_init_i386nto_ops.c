
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nto_fetch_link_map_offsets; int nto_regset_fill; int nto_register_area; int nto_supply_regset; int nto_supply_altregset; int nto_supply_fpregset; int nto_supply_gregset; int nto_regset_id; } ;


 TYPE_1__ current_nto_target ;
 int i386nto_register_area ;
 int i386nto_regset_fill ;
 int i386nto_regset_id ;
 int i386nto_supply_fpregset ;
 int i386nto_supply_gregset ;
 int i386nto_supply_regset ;
 int i386nto_svr4_fetch_link_map_offsets ;
 int nto_dummy_supply_regset ;

__attribute__((used)) static void
init_i386nto_ops (void)
{
  current_nto_target.nto_regset_id = i386nto_regset_id;
  current_nto_target.nto_supply_gregset = i386nto_supply_gregset;
  current_nto_target.nto_supply_fpregset = i386nto_supply_fpregset;
  current_nto_target.nto_supply_altregset = nto_dummy_supply_regset;
  current_nto_target.nto_supply_regset = i386nto_supply_regset;
  current_nto_target.nto_register_area = i386nto_register_area;
  current_nto_target.nto_regset_fill = i386nto_regset_fill;
  current_nto_target.nto_fetch_link_map_offsets =
    i386nto_svr4_fetch_link_map_offsets;
}
