
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_prop_visit_phi_node ;
 int copy_prop_visit_stmt ;
 int do_store_copy_prop ;
 int fini_copy_prop () ;
 int init_copy_prop () ;
 int ssa_propagate (int ,int ) ;

__attribute__((used)) static void
execute_copy_prop (bool store_copy_prop)
{
  do_store_copy_prop = store_copy_prop;
  init_copy_prop ();
  ssa_propagate (copy_prop_visit_stmt, copy_prop_visit_phi_node);
  fini_copy_prop ();
}
