
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch_tdep {scalar_t__ st0_regnum; } ;


 int* FSAVE_ADDR (char*,int) ;
 scalar_t__ I386_ST0_REGNUM ;
 int I387_FCTRL_REGNUM ;
 int I387_FIOFF_REGNUM ;
 int I387_FOOFF_REGNUM ;
 int I387_FOP_REGNUM ;
 int I387_ST0_REGNUM ;
 int I387_XMM0_REGNUM ;
 int current_gdbarch ;
 struct regcache* current_regcache ;
 int gdb_assert (int) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int memcpy (int*,unsigned char*,int) ;
 int regcache_raw_collect (struct regcache*,int,...) ;

void
i387_fill_fsave (void *fsave, int regnum)
{
  struct regcache *regcache = current_regcache;
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  char *regs = fsave;
  int i;

  gdb_assert (tdep->st0_regnum >= I386_ST0_REGNUM);





  for (i = tdep->st0_regnum; i < I387_XMM0_REGNUM; i++)
    if (regnum == -1 || regnum == i)
      {


 if (i >= I387_FCTRL_REGNUM
     && i != I387_FIOFF_REGNUM && i != I387_FOOFF_REGNUM)
   {
     unsigned char buf[4];

     regcache_raw_collect (regcache, i, buf);

     if (i == I387_FOP_REGNUM)
       {


  buf[1] &= ((1 << 3) - 1);
  buf[1] |= ((FSAVE_ADDR (regs, i))[1] & ~((1 << 3) - 1));
       }
     memcpy (FSAVE_ADDR (regs, i), buf, 2);
   }
 else
   regcache_raw_collect (regcache, i, FSAVE_ADDR (regs, i));
      }

}
