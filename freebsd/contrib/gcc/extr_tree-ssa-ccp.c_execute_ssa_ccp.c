
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccp_finalize () ;
 int ccp_initialize () ;
 int ccp_visit_phi_node ;
 int ccp_visit_stmt ;
 int do_store_ccp ;
 int ssa_propagate (int ,int ) ;

__attribute__((used)) static void
execute_ssa_ccp (bool store_ccp)
{
  do_store_ccp = store_ccp;
  ccp_initialize ();
  ssa_propagate (ccp_visit_stmt, ccp_visit_phi_node);
  ccp_finalize ();
}
