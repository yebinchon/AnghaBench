
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sport_device {int dma_tx_chan; int dma_rx_chan; TYPE_1__* regs; } ;
struct TYPE_2__ {int stat; } ;


 int DMA_DONE ;
 int DMA_ERR ;
 int ROVF ;
 int RUVF ;
 int SSYNC () ;
 int TOVF ;
 int TUVF ;
 int clear_dma_irqstat (int ) ;
 int get_dma_curr_irqstat (int ) ;

__attribute__((used)) static int sport_check_status(struct sport_device *sport,
  unsigned int *sport_stat,
  unsigned int *rx_stat,
  unsigned int *tx_stat)
{
 int status = 0;

 if (sport_stat) {
  SSYNC();
  status = sport->regs->stat;
  if (status & (TOVF|TUVF|ROVF|RUVF))
   sport->regs->stat = (status & (TOVF|TUVF|ROVF|RUVF));
  SSYNC();
  *sport_stat = status;
 }

 if (rx_stat) {
  SSYNC();
  status = get_dma_curr_irqstat(sport->dma_rx_chan);
  if (status & (DMA_DONE|DMA_ERR))
   clear_dma_irqstat(sport->dma_rx_chan);
  SSYNC();
  *rx_stat = status;
 }

 if (tx_stat) {
  SSYNC();
  status = get_dma_curr_irqstat(sport->dma_tx_chan);
  if (status & (DMA_DONE|DMA_ERR))
   clear_dma_irqstat(sport->dma_tx_chan);
  SSYNC();
  *tx_stat = status;
 }

 return 0;
}
