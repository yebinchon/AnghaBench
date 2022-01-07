
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch {int (* deprecated_extract_struct_value_address ) (struct regcache*) ;} ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (struct regcache*) ;

CORE_ADDR
gdbarch_deprecated_extract_struct_value_address (struct gdbarch *gdbarch, struct regcache *regcache)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->deprecated_extract_struct_value_address != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_deprecated_extract_struct_value_address called\n");
  return gdbarch->deprecated_extract_struct_value_address (regcache);
}
