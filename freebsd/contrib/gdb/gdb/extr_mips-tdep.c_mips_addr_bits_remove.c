
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int dummy; } ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 scalar_t__ mips_mask_address_p (struct gdbarch_tdep*) ;

__attribute__((used)) static CORE_ADDR
mips_addr_bits_remove (CORE_ADDR addr)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  if (mips_mask_address_p (tdep) && (((ULONGEST) addr) >> 32 == 0xffffffffUL))
    return addr &= 0xffffffffUL;
  else
    return addr;
}
