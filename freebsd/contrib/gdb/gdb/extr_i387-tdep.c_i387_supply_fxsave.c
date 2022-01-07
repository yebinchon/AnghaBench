
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch_tdep {scalar_t__ st0_regnum; scalar_t__ num_xmm_regs; } ;


 unsigned char* FXSAVE_ADDR (char const*,int) ;
 unsigned char* FXSAVE_MXCSR_ADDR (char const*) ;
 scalar_t__ I386_ST0_REGNUM ;
 int I387_FCTRL_REGNUM ;
 int I387_FIOFF_REGNUM ;
 int I387_FOOFF_REGNUM ;
 int I387_FOP_REGNUM ;
 int I387_FSTAT_REGNUM ;
 int I387_FTAG_REGNUM ;
 int I387_MXCSR_REGNUM ;
 int I387_ST0_REGNUM ;
 int I387_XMM0_REGNUM ;
 int gdb_assert (int) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int get_regcache_arch (struct regcache*) ;
 int i387_tag (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int regcache_raw_supply (struct regcache*,int,unsigned char*) ;

void
i387_supply_fxsave (struct regcache *regcache, int regnum, const void *fxsave)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (get_regcache_arch (regcache));
  const char *regs = fxsave;
  int i;

  gdb_assert (tdep->st0_regnum >= I386_ST0_REGNUM);
  gdb_assert (tdep->num_xmm_regs > 0);







  for (i = tdep->st0_regnum; i < I387_MXCSR_REGNUM; i++)
    if (regnum == -1 || regnum == i)
      {
 if (regs == ((void*)0))
   {
     regcache_raw_supply (regcache, i, ((void*)0));
     continue;
   }



 if (i >= I387_FCTRL_REGNUM && i < I387_XMM0_REGNUM
     && i != I387_FIOFF_REGNUM && i != I387_FOOFF_REGNUM)
   {
     unsigned char val[4];

     memcpy (val, FXSAVE_ADDR (regs, i), 2);
     val[2] = val[3] = 0;
     if (i == I387_FOP_REGNUM)
       val[1] &= ((1 << 3) - 1);
     else if (i== I387_FTAG_REGNUM)
       {




  unsigned long ftag = 0;
  int fpreg;
  int top;

  top = ((FXSAVE_ADDR (regs, I387_FSTAT_REGNUM))[1] >> 3);
  top &= 0x7;

  for (fpreg = 7; fpreg >= 0; fpreg--)
    {
      int tag;

      if (val[0] & (1 << fpreg))
        {
   int regnum = (fpreg + 8 - top) % 8 + tdep->st0_regnum;
   tag = i387_tag (FXSAVE_ADDR (regs, regnum));
        }
      else
        tag = 3;

      ftag |= tag << (2 * fpreg);
    }
  val[0] = ftag & 0xff;
  val[1] = (ftag >> 8) & 0xff;
       }
     regcache_raw_supply (regcache, i, val);
   }
 else
   regcache_raw_supply (regcache, i, FXSAVE_ADDR (regs, i));
      }

  if (regnum == I387_MXCSR_REGNUM || regnum == -1)
    {
      if (regs == ((void*)0))
 regcache_raw_supply (regcache, I387_MXCSR_REGNUM, ((void*)0));
      else
 regcache_raw_supply (regcache, I387_MXCSR_REGNUM,
        FXSAVE_MXCSR_ADDR (regs));
    }



}
