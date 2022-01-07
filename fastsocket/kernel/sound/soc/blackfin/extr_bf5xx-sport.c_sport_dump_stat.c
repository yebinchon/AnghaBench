
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sport_device {int dma_rx_chan; int dma_tx_chan; int dummy_tx_desc; int dummy_rx_desc; int dma_tx_desc; int dma_rx_desc; int curr_tx_desc; int curr_rx_desc; TYPE_1__* regs; } ;
struct TYPE_2__ {int stat; } ;


 int get_dma_curr_irqstat (int) ;
 int snprintf (char*,size_t,char*,int,int,int,int,int,...) ;

int sport_dump_stat(struct sport_device *sport, char *buf, size_t len)
{
 int ret;

 ret = snprintf(buf, len,
   "sts: 0x%04x\n"
   "rx dma %d sts: 0x%04x tx dma %d sts: 0x%04x\n",
   sport->regs->stat,
   sport->dma_rx_chan,
   get_dma_curr_irqstat(sport->dma_rx_chan),
   sport->dma_tx_chan,
   get_dma_curr_irqstat(sport->dma_tx_chan));
 buf += ret;
 len -= ret;

 ret += snprintf(buf, len,
   "curr_rx_desc:0x%p, curr_tx_desc:0x%p\n"
   "dma_rx_desc:0x%p, dma_tx_desc:0x%p\n"
   "dummy_rx_desc:0x%p, dummy_tx_desc:0x%p\n",
   sport->curr_rx_desc, sport->curr_tx_desc,
   sport->dma_rx_desc, sport->dma_tx_desc,
   sport->dummy_rx_desc, sport->dummy_tx_desc);

 return ret;
}
