
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct bt431_regs {int addr_reg; } ;


 int bt431_set_value (int ) ;
 int mb () ;

__attribute__((used)) static inline void bt431_write_reg_inc(struct bt431_regs *regs, u8 value)
{




 volatile u16 *r = &(regs->addr_reg);

 mb();
 *r = bt431_set_value(value);
}
