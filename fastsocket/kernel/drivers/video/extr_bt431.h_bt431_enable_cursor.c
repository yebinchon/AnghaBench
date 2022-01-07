
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bt431_regs {int dummy; } ;


 int BT431_CMD_4_1_MUX ;
 int BT431_CMD_CURS_ENABLE ;
 int BT431_CMD_OR_CURSORS ;
 int BT431_CMD_THICK_1 ;
 int BT431_REG_CMD ;
 int bt431_write_reg (struct bt431_regs*,int ,int) ;

__attribute__((used)) static inline void bt431_enable_cursor(struct bt431_regs *regs)
{
 bt431_write_reg(regs, BT431_REG_CMD,
   BT431_CMD_CURS_ENABLE | BT431_CMD_OR_CURSORS
   | BT431_CMD_4_1_MUX | BT431_CMD_THICK_1);
}
