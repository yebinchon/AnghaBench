
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regset {struct gdbarch_tdep* descr; } ;
struct regcache {int dummy; } ;
struct gdbarch_tdep {size_t sizeof_gregset; int gregset_num_regs; int* gregset_reg_offset; } ;


 int gdb_assert (int) ;
 int regcache_raw_supply (struct regcache*,int,char const*) ;

void
i386_supply_gregset (const struct regset *regset, struct regcache *regcache,
       int regnum, const void *gregs, size_t len)
{
  const struct gdbarch_tdep *tdep = regset->descr;
  const char *regs = gregs;
  int i;

  gdb_assert (len == tdep->sizeof_gregset);

  for (i = 0; i < tdep->gregset_num_regs; i++)
    {
      if ((regnum == i || regnum == -1)
   && tdep->gregset_reg_offset[i] != -1)
 regcache_raw_supply (regcache, i, regs + tdep->gregset_reg_offset[i]);
    }
}
