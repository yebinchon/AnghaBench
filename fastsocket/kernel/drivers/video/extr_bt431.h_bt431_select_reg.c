
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bt431_regs {int addr_hi; int addr_lo; } ;


 int bt431_set_value (int) ;
 int mb () ;
 int wmb () ;

__attribute__((used)) static inline void bt431_select_reg(struct bt431_regs *regs, int ir)
{




 volatile u16 *lo = &(regs->addr_lo);
 volatile u16 *hi = &(regs->addr_hi);

 mb();
 *lo = bt431_set_value(ir & 0xff);
 wmb();
 *hi = bt431_set_value((ir >> 8) & 0xff);
}
