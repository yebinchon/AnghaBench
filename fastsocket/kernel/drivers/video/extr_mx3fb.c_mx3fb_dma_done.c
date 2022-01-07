
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mx3fb_info {int flip_cmpl; } ;
struct mx3fb_data {int dev; TYPE_2__* fbi; } ;
struct TYPE_3__ {struct dma_chan* chan; } ;
struct idmac_tx_desc {TYPE_1__ txd; } ;
struct idmac_channel {int eof_irq; struct mx3fb_data* client; } ;
struct dma_chan {int dummy; } ;
struct TYPE_4__ {struct mx3fb_info* par; } ;


 int complete (int *) ;
 int dev_dbg (int ,char*,int ) ;
 int disable_irq_nosync (int ) ;
 struct idmac_channel* to_idmac_chan (struct dma_chan*) ;
 struct idmac_tx_desc* to_tx_desc (void*) ;

__attribute__((used)) static void mx3fb_dma_done(void *arg)
{
 struct idmac_tx_desc *tx_desc = to_tx_desc(arg);
 struct dma_chan *chan = tx_desc->txd.chan;
 struct idmac_channel *ichannel = to_idmac_chan(chan);
 struct mx3fb_data *mx3fb = ichannel->client;
 struct mx3fb_info *mx3_fbi = mx3fb->fbi->par;

 dev_dbg(mx3fb->dev, "irq %d callback\n", ichannel->eof_irq);


 disable_irq_nosync(ichannel->eof_irq);

 complete(&mx3_fbi->flip_cmpl);
}
