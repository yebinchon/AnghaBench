
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int (* store_return_value ) (struct type*,struct regcache*,void const*) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (struct type*,struct regcache*,void const*) ;

void
gdbarch_store_return_value (struct gdbarch *gdbarch, struct type *type, struct regcache *regcache, const void *valbuf)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->store_return_value != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_store_return_value called\n");
  gdbarch->store_return_value (type, regcache, valbuf);
}
