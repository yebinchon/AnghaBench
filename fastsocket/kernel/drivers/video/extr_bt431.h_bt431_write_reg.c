
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bt431_regs {int dummy; } ;


 int bt431_select_reg (struct bt431_regs*,int) ;
 int bt431_write_reg_inc (struct bt431_regs*,int ) ;

__attribute__((used)) static inline void bt431_write_reg(struct bt431_regs *regs, int ir, u8 value)
{
 bt431_select_reg(regs, ir);
 bt431_write_reg_inc(regs, value);
}
