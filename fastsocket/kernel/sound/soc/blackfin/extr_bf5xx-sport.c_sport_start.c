
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sport_device {TYPE_1__* regs; int dma_tx_chan; int dma_rx_chan; } ;
struct TYPE_2__ {int tcr1; int rcr1; } ;


 int RSPEN ;
 int SSYNC () ;
 int TSPEN ;
 int enable_dma (int ) ;

__attribute__((used)) static int sport_start(struct sport_device *sport)
{
 enable_dma(sport->dma_rx_chan);
 enable_dma(sport->dma_tx_chan);
 sport->regs->rcr1 |= RSPEN;
 sport->regs->tcr1 |= TSPEN;
 SSYNC();

 return 0;
}
