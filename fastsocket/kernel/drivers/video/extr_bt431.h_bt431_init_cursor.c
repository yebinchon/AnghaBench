
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt431_regs {int dummy; } ;


 int BT431_REG_WXLO ;
 int bt431_select_reg (struct bt431_regs*,int ) ;
 int bt431_write_reg_inc (struct bt431_regs*,int) ;

__attribute__((used)) static inline void bt431_init_cursor(struct bt431_regs *regs)
{

 bt431_select_reg(regs, BT431_REG_WXLO);
 bt431_write_reg_inc(regs, 0x00);
 bt431_write_reg_inc(regs, 0x00);
 bt431_write_reg_inc(regs, 0x00);
 bt431_write_reg_inc(regs, 0x00);
 bt431_write_reg_inc(regs, 0x00);
 bt431_write_reg_inc(regs, 0x00);
 bt431_write_reg_inc(regs, 0x00);
 bt431_write_reg_inc(regs, 0x00);
}
