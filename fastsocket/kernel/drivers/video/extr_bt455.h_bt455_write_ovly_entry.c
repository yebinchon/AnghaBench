
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bt455_regs {int addr_ovly; } ;


 int bt455_select_reg (struct bt455_regs*,int) ;
 int wmb () ;

__attribute__((used)) static inline void bt455_write_ovly_entry(struct bt455_regs *regs, int cr,
       u8 red, u8 green, u8 blue)
{
 bt455_select_reg(regs, cr);
 wmb();
 regs->addr_ovly = red & 0x0f;
 wmb();
 regs->addr_ovly = green & 0x0f;
 wmb();
 regs->addr_ovly = blue & 0x0f;
}
