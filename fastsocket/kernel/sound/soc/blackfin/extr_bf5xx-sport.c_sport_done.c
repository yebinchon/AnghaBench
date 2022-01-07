
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {int rx_desc_bytes; int tx_desc_bytes; int err_irq; int dma_tx_chan; int dma_rx_chan; struct sport_device* dummy_buf; struct sport_device* dummy_tx_desc; struct sport_device* dummy_rx_desc; struct sport_device* dma_tx_desc; struct sport_device* dma_rx_desc; } ;
struct dmasg {int dummy; } ;


 int dma_free_coherent (int *,int,struct sport_device*,int ) ;
 int free_dma (int ) ;
 int free_irq (int ,struct sport_device*) ;
 int kfree (struct sport_device*) ;
 int l1_data_sram_free (struct sport_device*) ;
 int sport_stop (struct sport_device*) ;

void sport_done(struct sport_device *sport)
{
 if (sport == ((void*)0))
  return;

 sport_stop(sport);
 if (sport->dma_rx_desc)
  dma_free_coherent(((void*)0), sport->rx_desc_bytes,
   sport->dma_rx_desc, 0);
 if (sport->dma_tx_desc)
  dma_free_coherent(((void*)0), sport->tx_desc_bytes,
   sport->dma_tx_desc, 0);






 dma_free_coherent(((void*)0), 2*sizeof(struct dmasg),
  sport->dummy_rx_desc, 0);
 dma_free_coherent(((void*)0), 2*sizeof(struct dmasg),
  sport->dummy_tx_desc, 0);
 kfree(sport->dummy_buf);

 free_dma(sport->dma_rx_chan);
 free_dma(sport->dma_tx_chan);
 free_irq(sport->err_irq, sport);

 kfree(sport);
  sport = ((void*)0);
}
