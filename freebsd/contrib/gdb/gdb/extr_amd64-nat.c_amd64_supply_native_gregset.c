
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;


 int NUM_REGS ;
 int amd64_native_gregset32_num_regs ;
 int amd64_native_gregset64_num_regs ;
 int amd64_native_gregset_reg_offset (int) ;
 int gdbarch_ptr_bit (struct gdbarch*) ;
 struct gdbarch* get_regcache_arch (struct regcache*) ;
 int regcache_raw_supply (struct regcache*,int,char const*) ;

void
amd64_supply_native_gregset (struct regcache *regcache,
        const void *gregs, int regnum)
{
  const char *regs = gregs;
  struct gdbarch *gdbarch = get_regcache_arch (regcache);
  int num_regs = amd64_native_gregset64_num_regs;
  int i;

  if (gdbarch_ptr_bit (gdbarch) == 32)
    num_regs = amd64_native_gregset32_num_regs;

  if (num_regs > NUM_REGS)
    num_regs = NUM_REGS;

  for (i = 0; i < num_regs; i++)
    {
      if (regnum == -1 || regnum == i)
 {
   int offset = amd64_native_gregset_reg_offset (i);

   if (offset != -1)
     regcache_raw_supply (regcache, i, regs + offset);
 }
    }
}
