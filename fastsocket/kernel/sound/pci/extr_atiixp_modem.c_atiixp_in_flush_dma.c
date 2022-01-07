
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atiixp_modem {int dummy; } ;


 int ATI_REG_MODEM_FIFO_IN_FLUSH ;
 int MODEM_FIFO_FLUSH ;
 int atiixp_write (struct atiixp_modem*,int ,int ) ;

__attribute__((used)) static void atiixp_in_flush_dma(struct atiixp_modem *chip)
{
 atiixp_write(chip, MODEM_FIFO_FLUSH, ATI_REG_MODEM_FIFO_IN_FLUSH);
}
