
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_modem {int dummy; } ;


 unsigned int ATI_REG_CMD_MODEM_RECEIVE_EN ;
 int CMD ;
 unsigned int atiixp_read (struct atiixp_modem*,int ) ;
 int atiixp_update (struct atiixp_modem*,int ,unsigned int,int ) ;
 int atiixp_write (struct atiixp_modem*,int ,unsigned int) ;

__attribute__((used)) static void atiixp_in_enable_transfer(struct atiixp_modem *chip, int on)
{
 if (on) {
  unsigned int data = atiixp_read(chip, CMD);
  if (! (data & ATI_REG_CMD_MODEM_RECEIVE_EN)) {
   data |= ATI_REG_CMD_MODEM_RECEIVE_EN;
   atiixp_write(chip, CMD, data);
  }
 } else
  atiixp_update(chip, CMD, ATI_REG_CMD_MODEM_RECEIVE_EN, 0);
}
