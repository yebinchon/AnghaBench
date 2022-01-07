
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct regcache {int dummy; } ;
struct gdbarch {int (* push_dummy_call ) (struct gdbarch*,int ,struct regcache*,int ,int,struct value**,int ,int,int ) ;} ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (struct gdbarch*,int ,struct regcache*,int ,int,struct value**,int ,int,int ) ;

CORE_ADDR
gdbarch_push_dummy_call (struct gdbarch *gdbarch, CORE_ADDR func_addr, struct regcache *regcache, CORE_ADDR bp_addr, int nargs, struct value **args, CORE_ADDR sp, int struct_return, CORE_ADDR struct_addr)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->push_dummy_call != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_push_dummy_call called\n");
  return gdbarch->push_dummy_call (gdbarch, func_addr, regcache, bp_addr, nargs, args, sp, struct_return, struct_addr);
}
