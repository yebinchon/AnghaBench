
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {struct gdbarch_tdep* descr; } ;
struct regcache {int dummy; } ;
struct gdbarch_tdep {size_t sizeof_gregset; } ;


 size_t I387_SIZEOF_FSAVE ;
 int gdb_assert (int) ;
 int i386_supply_gregset (struct regset const*,struct regcache*,int,void const*,size_t) ;
 int i387_supply_fsave (struct regcache*,int,char*) ;

__attribute__((used)) static void
i386obsd_aout_supply_regset (const struct regset *regset,
        struct regcache *regcache, int regnum,
        const void *regs, size_t len)
{
  const struct gdbarch_tdep *tdep = regset->descr;

  gdb_assert (len >= tdep->sizeof_gregset + I387_SIZEOF_FSAVE);

  i386_supply_gregset (regset, regcache, regnum, regs, tdep->sizeof_gregset);
  i387_supply_fsave (regcache, regnum, (char *) regs + tdep->sizeof_gregset);
}
