
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;


 int I387_FISEG_REGNUM ;
 int I387_FOSEG_REGNUM ;
 int i387_collect_fxsave (struct regcache const*,int,void*) ;
 int regcache_raw_collect (struct regcache const*,int,char*) ;

void
amd64_collect_fxsave (const struct regcache *regcache, int regnum,
        void *fxsave)
{
  char *regs = fxsave;

  i387_collect_fxsave (regcache, regnum, fxsave);

  if (regnum == -1 || regnum == I387_FISEG_REGNUM)
    regcache_raw_collect (regcache, I387_FISEG_REGNUM, regs + 12);
  if (regnum == -1 || regnum == I387_FOSEG_REGNUM)
    regcache_raw_collect (regcache, I387_FOSEG_REGNUM, regs + 20);
}
