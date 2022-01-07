
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sport_device {int dma_tx_chan; int dma_rx_chan; TYPE_1__* regs; } ;
struct TYPE_2__ {int rcr1; int tcr1; } ;


 int RSPEN ;
 int SSYNC () ;
 int TSPEN ;
 int disable_dma (int ) ;

__attribute__((used)) static int sport_stop(struct sport_device *sport)
{
 sport->regs->tcr1 &= ~TSPEN;
 sport->regs->rcr1 &= ~RSPEN;
 SSYNC();

 disable_dma(sport->dma_rx_chan);
 disable_dma(sport->dma_tx_chan);
 return 0;
}
