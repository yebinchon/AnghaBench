
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_modem {int dummy; } ;


 unsigned int ATI_REG_CMD_MODEM_OUT_DMA1_EN ;
 int CMD ;
 int atiixp_out_flush_dma (struct atiixp_modem*) ;
 unsigned int atiixp_read (struct atiixp_modem*,int ) ;
 int atiixp_write (struct atiixp_modem*,int ,unsigned int) ;

__attribute__((used)) static void atiixp_out_enable_dma(struct atiixp_modem *chip, int on)
{
 unsigned int data;
 data = atiixp_read(chip, CMD);
 if (on) {
  if (data & ATI_REG_CMD_MODEM_OUT_DMA1_EN)
   return;
  atiixp_out_flush_dma(chip);
  data |= ATI_REG_CMD_MODEM_OUT_DMA1_EN;
 } else
  data &= ~ATI_REG_CMD_MODEM_OUT_DMA1_EN;
 atiixp_write(chip, CMD, data);
}
