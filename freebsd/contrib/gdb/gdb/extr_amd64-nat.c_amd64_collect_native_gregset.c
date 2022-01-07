
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;


 int I386_CS_REGNUM ;
 int I386_EIP_REGNUM ;
 int I386_GS_REGNUM ;
 int NUM_REGS ;
 int amd64_native_gregset32_num_regs ;
 int amd64_native_gregset64_num_regs ;
 int amd64_native_gregset_reg_offset (int) ;
 int gdbarch_ptr_bit (struct gdbarch*) ;
 struct gdbarch* get_regcache_arch (struct regcache const*) ;
 int memset (char*,int ,int) ;
 int regcache_raw_collect (struct regcache const*,int,char*) ;

void
amd64_collect_native_gregset (const struct regcache *regcache,
         void *gregs, int regnum)
{
  char *regs = gregs;
  struct gdbarch *gdbarch = get_regcache_arch (regcache);
  int num_regs = amd64_native_gregset64_num_regs;
  int i;

  if (gdbarch_ptr_bit (gdbarch) == 32)
    {
      num_regs = amd64_native_gregset32_num_regs;



      for (i = 0; i <= I386_EIP_REGNUM; i++)
 {
   if (regnum == -1 || regnum == i)
     memset (regs + amd64_native_gregset_reg_offset (i), 0, 8);
 }

      for (i = I386_CS_REGNUM; i <= I386_GS_REGNUM; i++)
 {
   if (regnum == -1 || regnum == i)
     memset (regs + amd64_native_gregset_reg_offset (i), 0, 8);
 }
    }

  if (num_regs > NUM_REGS)
    num_regs = NUM_REGS;

  for (i = 0; i < num_regs; i++)
    {
      if (regnum == -1 || regnum == i)
 {
   int offset = amd64_native_gregset_reg_offset (i);

   if (offset != -1)
     regcache_raw_collect (regcache, i, regs + offset);
 }
    }
}
