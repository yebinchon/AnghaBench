
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bt431_regs {int dummy; } ;


 int BT431_REG_CXLO ;
 int bt431_select_reg (struct bt431_regs*,int ) ;
 int bt431_write_reg_inc (struct bt431_regs*,int) ;

__attribute__((used)) static inline void bt431_position_cursor(struct bt431_regs *regs, u16 x, u16 y)
{
 x += 412 - 52;
 y += 68 - 32;


 bt431_select_reg(regs, BT431_REG_CXLO);
 bt431_write_reg_inc(regs, x & 0xff);
 bt431_write_reg_inc(regs, (x >> 8) & 0x0f);
 bt431_write_reg_inc(regs, y & 0xff);
 bt431_write_reg_inc(regs, (y >> 8) & 0x0f);
}
