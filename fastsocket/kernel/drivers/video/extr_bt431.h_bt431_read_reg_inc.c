
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct bt431_regs {int addr_reg; } ;


 int bt431_get_value (int volatile) ;
 int mb () ;

__attribute__((used)) static inline u8 bt431_read_reg_inc(struct bt431_regs *regs)
{




 volatile u16 *r = &(regs->addr_reg);

 mb();
 return bt431_get_value(*r);
}
