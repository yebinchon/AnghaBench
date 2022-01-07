
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_modem {int dummy; } ;


 unsigned int ATI_REG_CMD_BURST_EN ;
 unsigned int ATI_REG_CMD_MODEM_PRESENT ;
 int ATI_REG_IER_MODEM_IN_XRUN_EN ;
 int ATI_REG_IER_MODEM_OUT1_XRUN_EN ;
 int ATI_REG_IER_MODEM_STATUS_EN ;
 int CMD ;
 int IER ;
 int ISR ;
 unsigned int atiixp_read (struct atiixp_modem*,int ) ;
 int atiixp_write (struct atiixp_modem*,int ,int) ;

__attribute__((used)) static int snd_atiixp_chip_start(struct atiixp_modem *chip)
{
 unsigned int reg;


 reg = atiixp_read(chip, CMD);
 reg |= ATI_REG_CMD_BURST_EN;
 if(!(reg & ATI_REG_CMD_MODEM_PRESENT))
  reg |= ATI_REG_CMD_MODEM_PRESENT;
 atiixp_write(chip, CMD, reg);


 atiixp_write(chip, ISR, 0xffffffff);

 atiixp_write(chip, IER,
       ATI_REG_IER_MODEM_STATUS_EN |
       ATI_REG_IER_MODEM_IN_XRUN_EN |
       ATI_REG_IER_MODEM_OUT1_XRUN_EN);
 return 0;
}
