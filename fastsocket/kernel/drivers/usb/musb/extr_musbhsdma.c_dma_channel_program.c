
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u32 ;
typedef void* u16 ;
struct musb_dma_channel {void* max_packet_sz; void* len; int start_addr; scalar_t__ transmit; int epnum; } ;
struct dma_channel {scalar_t__ status; scalar_t__ actual_len; struct musb_dma_channel* private_data; } ;
typedef int dma_addr_t ;


 int BUG_ON (int) ;
 int DBG (int,char*,int ,char*,void*,int ,void*,int) ;
 scalar_t__ MUSB_DMA_STATUS_BUSY ;
 scalar_t__ MUSB_DMA_STATUS_UNKNOWN ;
 int configure_channel (struct dma_channel*,void*,int,int ,void*) ;

__attribute__((used)) static int dma_channel_program(struct dma_channel *channel,
    u16 packet_sz, u8 mode,
    dma_addr_t dma_addr, u32 len)
{
 struct musb_dma_channel *musb_channel = channel->private_data;

 DBG(2, "ep%d-%s pkt_sz %d, dma_addr 0x%x length %d, mode %d\n",
  musb_channel->epnum,
  musb_channel->transmit ? "Tx" : "Rx",
  packet_sz, dma_addr, len, mode);

 BUG_ON(channel->status == MUSB_DMA_STATUS_UNKNOWN ||
  channel->status == MUSB_DMA_STATUS_BUSY);

 channel->actual_len = 0;
 musb_channel->start_addr = dma_addr;
 musb_channel->len = len;
 musb_channel->max_packet_sz = packet_sz;
 channel->status = MUSB_DMA_STATUS_BUSY;

 if ((mode == 1) && (len >= packet_sz))
  configure_channel(channel, packet_sz, 1, dma_addr, len);
 else
  configure_channel(channel, packet_sz, 0, dma_addr, len);

 return 1;
}
