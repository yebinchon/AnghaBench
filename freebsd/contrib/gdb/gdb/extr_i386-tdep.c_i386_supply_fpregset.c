
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {struct gdbarch_tdep* descr; } ;
struct regcache {int dummy; } ;
struct gdbarch_tdep {size_t sizeof_fpregset; } ;


 size_t I387_SIZEOF_FXSAVE ;
 int gdb_assert (int) ;
 int i387_supply_fsave (struct regcache*,int,void const*) ;
 int i387_supply_fxsave (struct regcache*,int,void const*) ;

__attribute__((used)) static void
i386_supply_fpregset (const struct regset *regset, struct regcache *regcache,
        int regnum, const void *fpregs, size_t len)
{
  const struct gdbarch_tdep *tdep = regset->descr;

  if (len == I387_SIZEOF_FXSAVE)
    {
      i387_supply_fxsave (regcache, regnum, fpregs);
      return;
    }

  gdb_assert (len == tdep->sizeof_fpregset);
  i387_supply_fsave (regcache, regnum, fpregs);
}
