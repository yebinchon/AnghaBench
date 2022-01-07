
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_REGS ;
 int amd64_native_gregset32_num_regs ;
 int* amd64_native_gregset32_reg_offset ;
 int amd64_native_gregset64_num_regs ;
 int* amd64_native_gregset64_reg_offset ;
 int current_gdbarch ;
 int gdb_assert (int) ;
 int gdbarch_ptr_bit (int ) ;

__attribute__((used)) static int
amd64_native_gregset_reg_offset (int regnum)
{
  int *reg_offset = amd64_native_gregset64_reg_offset;
  int num_regs = amd64_native_gregset64_num_regs;

  gdb_assert (regnum >= 0);

  if (gdbarch_ptr_bit (current_gdbarch) == 32)
    {
      reg_offset = amd64_native_gregset32_reg_offset;
      num_regs = amd64_native_gregset32_num_regs;
    }

  if (num_regs > NUM_REGS)
    num_regs = NUM_REGS;

  if (regnum < num_regs && regnum < NUM_REGS)
    return reg_offset[regnum];

  return -1;
}
