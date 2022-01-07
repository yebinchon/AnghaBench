
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf_expr_baton {int objfile; } ;
typedef int CORE_ADDR ;


 int error (char*) ;
 int inferior_ptid ;
 int target_get_thread_local_address (int ,int ,int ) ;
 scalar_t__ target_get_thread_local_address_p () ;

__attribute__((used)) static CORE_ADDR
dwarf_expr_tls_address (void *baton, CORE_ADDR offset)
{
  struct dwarf_expr_baton *debaton = (struct dwarf_expr_baton *) baton;
  CORE_ADDR addr;

  if (target_get_thread_local_address_p ())
    addr = target_get_thread_local_address (inferior_ptid,
         debaton->objfile,
         offset);


  else
    error ("Cannot find thread-local variables on this target");

  return addr;
}
