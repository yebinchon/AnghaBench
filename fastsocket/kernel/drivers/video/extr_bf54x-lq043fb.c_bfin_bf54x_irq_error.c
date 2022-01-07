
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int irqreturn_t ;


 int CH_EPPI0 ;
 int EPPI_EN ;
 int IRQ_HANDLED ;
 int bfin_read_EPPI0_CONTROL () ;
 scalar_t__ bfin_read_EPPI0_STATUS () ;
 int bfin_write_EPPI0_CONTROL (int) ;
 int bfin_write_EPPI0_STATUS (int) ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;

__attribute__((used)) static irqreturn_t bfin_bf54x_irq_error(int irq, void *dev_id)
{


 u16 status = bfin_read_EPPI0_STATUS();

 bfin_write_EPPI0_STATUS(0xFFFF);

 if (status) {
  bfin_write_EPPI0_CONTROL(bfin_read_EPPI0_CONTROL() & ~EPPI_EN);
  disable_dma(CH_EPPI0);


  enable_dma(CH_EPPI0);
  bfin_write_EPPI0_CONTROL(bfin_read_EPPI0_CONTROL() | EPPI_EN);
  bfin_write_EPPI0_STATUS(0xFFFF);
 }

 return IRQ_HANDLED;
}
