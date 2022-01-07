
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bt455_regs {int addr_cmap_data; } ;


 int bt455_select_reg (struct bt455_regs*,int) ;
 int mb () ;
 int rmb () ;

__attribute__((used)) static inline void bt455_read_cmap_entry(struct bt455_regs *regs, int cr,
      u8* red, u8* green, u8* blue)
{
 bt455_select_reg(regs, cr);
 mb();
 *red = regs->addr_cmap_data & 0x0f;
 rmb();
 *green = regs->addr_cmap_data & 0x0f;
 rmb();
 *blue = regs->addr_cmap_data & 0x0f;
}
