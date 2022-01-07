
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch_tdep {scalar_t__ st0_regnum; } ;


 unsigned char* FSAVE_ADDR (char const*,int) ;
 scalar_t__ I386_ST0_REGNUM ;
 int I387_FCTRL_REGNUM ;
 int I387_FIOFF_REGNUM ;
 int I387_FOOFF_REGNUM ;
 int I387_FOP_REGNUM ;
 int I387_ST0_REGNUM ;
 int I387_XMM0_REGNUM ;
 int gdb_assert (int) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int get_regcache_arch (struct regcache*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int regcache_raw_supply (struct regcache*,int,unsigned char*) ;

void
i387_supply_fsave (struct regcache *regcache, int regnum, const void *fsave)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (get_regcache_arch (regcache));
  const char *regs = fsave;
  int i;

  gdb_assert (tdep->st0_regnum >= I386_ST0_REGNUM);





  for (i = tdep->st0_regnum; i < I387_XMM0_REGNUM; i++)
    if (regnum == -1 || regnum == i)
      {
 if (fsave == ((void*)0))
   {
     regcache_raw_supply (regcache, i, ((void*)0));
     continue;
   }



 if (i >= I387_FCTRL_REGNUM
     && i != I387_FIOFF_REGNUM && i != I387_FOOFF_REGNUM)
   {
     unsigned char val[4];

     memcpy (val, FSAVE_ADDR (regs, i), 2);
     val[2] = val[3] = 0;
     if (i == I387_FOP_REGNUM)
       val[1] &= ((1 << 3) - 1);
     regcache_raw_supply (regcache, i, val);
   }
 else
   regcache_raw_supply (regcache, i, FSAVE_ADDR (regs, i));
      }

}
