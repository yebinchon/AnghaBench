
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* deprecated_do_registers_info ) (int,int) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int,int) ;

void
gdbarch_deprecated_do_registers_info (struct gdbarch *gdbarch, int reg_nr, int fpregs)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->deprecated_do_registers_info != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_deprecated_do_registers_info called\n");
  gdbarch->deprecated_do_registers_info (reg_nr, fpregs);
}
