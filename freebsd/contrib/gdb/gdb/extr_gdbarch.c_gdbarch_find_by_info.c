
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int * current_gdbarch ;
 int current_gdbarch_swap_in_hack (struct gdbarch*) ;
 struct gdbarch* current_gdbarch_swap_out_hack () ;
 struct gdbarch* find_arch_by_info (struct gdbarch*,struct gdbarch_info) ;
 int gdb_assert (int ) ;

struct gdbarch *
gdbarch_find_by_info (struct gdbarch_info info)
{






  struct gdbarch *old_gdbarch = current_gdbarch_swap_out_hack ();


  struct gdbarch *new_gdbarch = find_arch_by_info (old_gdbarch, info);


  gdb_assert (current_gdbarch == ((void*)0));
  current_gdbarch_swap_in_hack (old_gdbarch);

  return new_gdbarch;
}
