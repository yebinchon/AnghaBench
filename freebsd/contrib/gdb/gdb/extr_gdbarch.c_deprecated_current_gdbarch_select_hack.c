
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int initialized_p; } ;


 int architecture_changed_event () ;
 int * current_gdbarch ;
 int current_gdbarch_swap_in_hack (struct gdbarch*) ;
 int current_gdbarch_swap_out_hack () ;
 int gdb_assert (int ) ;

void
deprecated_current_gdbarch_select_hack (struct gdbarch *new_gdbarch)
{
  gdb_assert (new_gdbarch != ((void*)0));
  gdb_assert (current_gdbarch != ((void*)0));
  gdb_assert (new_gdbarch->initialized_p);
  current_gdbarch_swap_out_hack ();
  current_gdbarch_swap_in_hack (new_gdbarch);
  architecture_changed_event ();
}
