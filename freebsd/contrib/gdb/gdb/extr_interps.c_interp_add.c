
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interp {struct interp* next; int name; } ;


 int gdb_assert (int ) ;
 int initialize_interps () ;
 struct interp* interp_list ;
 int * interp_lookup (int ) ;
 int interpreter_initialized ;

void
interp_add (struct interp *interp)
{
  if (!interpreter_initialized)
    initialize_interps ();

  gdb_assert (interp_lookup (interp->name) == ((void*)0));

  interp->next = interp_list;
  interp_list = interp;
}
