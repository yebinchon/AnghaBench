
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {struct gdbarch_tdep* descr; } ;
struct regcache {int dummy; } ;
struct gdbarch_tdep {size_t sizeof_gregset; } ;


 size_t I387_SIZEOF_FXSAVE ;
 int amd64_supply_fxsave (struct regcache*,int,char*) ;
 int gdb_assert (int) ;
 int i386_supply_gregset (struct regset const*,struct regcache*,int,void const*,size_t) ;

__attribute__((used)) static void
amd64obsd_supply_regset (const struct regset *regset,
    struct regcache *regcache, int regnum,
    const void *regs, size_t len)
{
  const struct gdbarch_tdep *tdep = regset->descr;

  gdb_assert (len >= tdep->sizeof_gregset + I387_SIZEOF_FXSAVE);

  i386_supply_gregset (regset, regcache, regnum, regs, tdep->sizeof_gregset);
  amd64_supply_fxsave (regcache, regnum, (char *)regs + tdep->sizeof_gregset);
}
