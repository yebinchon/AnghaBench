
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* dwarf_reg_to_regnum ) (int) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int) ;

int
gdbarch_dwarf_reg_to_regnum (struct gdbarch *gdbarch, int dwarf_regnr)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->dwarf_reg_to_regnum != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_dwarf_reg_to_regnum called\n");
  return gdbarch->dwarf_reg_to_regnum (dwarf_regnr);
}
