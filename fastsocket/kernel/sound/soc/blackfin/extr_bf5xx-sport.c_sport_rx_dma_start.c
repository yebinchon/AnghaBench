
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sport_device {TYPE_1__* curr_rx_desc; int dma_rx_chan; TYPE_1__* dma_rx_desc; TYPE_1__* dummy_rx_desc; } ;
struct TYPE_2__ {int start_addr; struct TYPE_2__* next_desc_addr; } ;


 int DMAFLOW_LARGE ;
 int NDSIZE_9 ;
 int SSYNC () ;
 int WDSIZE_32 ;
 int WNR ;
 int set_dma_config (int ,int) ;
 int set_dma_curr_addr (int ,int ) ;
 int set_dma_next_desc_addr (int ,TYPE_1__*) ;
 int set_dma_x_count (int ,int ) ;
 int set_dma_x_modify (int ,int ) ;

__attribute__((used)) static inline int sport_rx_dma_start(struct sport_device *sport, int dummy)
{
 if (dummy) {
  sport->dummy_rx_desc->next_desc_addr = sport->dummy_rx_desc;
  sport->curr_rx_desc = sport->dummy_rx_desc;
 } else
  sport->curr_rx_desc = sport->dma_rx_desc;

 set_dma_next_desc_addr(sport->dma_rx_chan, sport->curr_rx_desc);
 set_dma_x_count(sport->dma_rx_chan, 0);
 set_dma_x_modify(sport->dma_rx_chan, 0);
 set_dma_config(sport->dma_rx_chan, (DMAFLOW_LARGE | NDSIZE_9 | WDSIZE_32 | WNR));

 set_dma_curr_addr(sport->dma_rx_chan, sport->curr_rx_desc->start_addr);
 SSYNC();

 return 0;
}
