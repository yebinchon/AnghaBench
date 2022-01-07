
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int (* return_value ) (struct gdbarch*,struct type*,struct regcache*,void*,void const*) ;} ;
typedef enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (struct gdbarch*,struct type*,struct regcache*,void*,void const*) ;

enum return_value_convention
gdbarch_return_value (struct gdbarch *gdbarch, struct type *valtype, struct regcache *regcache, void *readbuf, const void *writebuf)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->return_value != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_return_value called\n");
  return gdbarch->return_value (gdbarch, valtype, regcache, readbuf, writebuf);
}
