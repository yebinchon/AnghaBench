
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int amd64_native_gregset32_num_regs ;
 int amd64_native_gregset32_reg_offset ;
 int amd64_native_gregset64_reg_offset ;
 int amd64nbsd32_r_reg_offset ;
 int amd64nbsd_r_reg_offset ;

void
_initialize_amd64nbsd_nat (void)
{
  amd64_native_gregset32_reg_offset = amd64nbsd32_r_reg_offset;
  amd64_native_gregset32_num_regs = ARRAY_SIZE (amd64nbsd32_r_reg_offset);
  amd64_native_gregset64_reg_offset = amd64nbsd_r_reg_offset;
}
