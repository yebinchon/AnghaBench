
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int irqreturn_t ;


 int CH_PPI ;
 int IRQ_HANDLED ;
 scalar_t__ bfin_read_PPI_STATUS () ;
 int bfin_t350mcqb_disable_ppi () ;
 int bfin_t350mcqb_enable_ppi () ;
 int bfin_write_PPI_STATUS (int) ;
 int disable_dma (int ) ;
 int enable_dma (int ) ;

__attribute__((used)) static irqreturn_t bfin_t350mcqb_irq_error(int irq, void *dev_id)
{


 u16 status = bfin_read_PPI_STATUS();
 bfin_write_PPI_STATUS(0xFFFF);

 if (status) {
  bfin_t350mcqb_disable_ppi();
  disable_dma(CH_PPI);


  enable_dma(CH_PPI);
  bfin_t350mcqb_enable_ppi();
  bfin_write_PPI_STATUS(0xFFFF);
 }

 return IRQ_HANDLED;
}
