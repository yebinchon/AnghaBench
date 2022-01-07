
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {int dummy; } ;
struct gdbarch {struct regset const* (* regset_from_core_section ) (struct gdbarch*,char const*,size_t) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 struct regset const* stub1 (struct gdbarch*,char const*,size_t) ;

const struct regset *
gdbarch_regset_from_core_section (struct gdbarch *gdbarch, const char *sect_name, size_t sect_size)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->regset_from_core_section != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_regset_from_core_section called\n");
  return gdbarch->regset_from_core_section (gdbarch, sect_name, sect_size);
}
