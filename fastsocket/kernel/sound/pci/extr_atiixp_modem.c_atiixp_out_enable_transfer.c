
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_modem {int dummy; } ;


 int ATI_REG_CMD_MODEM_SEND1_EN ;
 int CMD ;
 int atiixp_update (struct atiixp_modem*,int ,int ,int ) ;

__attribute__((used)) static void atiixp_out_enable_transfer(struct atiixp_modem *chip, int on)
{
 atiixp_update(chip, CMD, ATI_REG_CMD_MODEM_SEND1_EN,
        on ? ATI_REG_CMD_MODEM_SEND1_EN : 0);
}
