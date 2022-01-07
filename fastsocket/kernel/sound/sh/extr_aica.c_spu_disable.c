
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ ARM_RESET_REGISTER ;
 scalar_t__ SPU_REGISTER_BASE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int readl (scalar_t__) ;
 int spu_write_wait () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void spu_disable(void)
{
 int i;
 unsigned long flags;
 u32 regval;
 spu_write_wait();
 regval = readl(ARM_RESET_REGISTER);
 regval |= 1;
 spu_write_wait();
 local_irq_save(flags);
 writel(regval, ARM_RESET_REGISTER);
 local_irq_restore(flags);
 for (i = 0; i < 64; i++) {
  spu_write_wait();
  regval = readl(SPU_REGISTER_BASE + (i * 0x80));
  regval = (regval & ~0x4000) | 0x8000;
  spu_write_wait();
  local_irq_save(flags);
  writel(regval, SPU_REGISTER_BASE + (i * 0x80));
  local_irq_restore(flags);
 }
}
