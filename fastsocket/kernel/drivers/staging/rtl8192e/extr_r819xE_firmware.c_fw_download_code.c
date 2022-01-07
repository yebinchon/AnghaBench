
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {unsigned char* data; scalar_t__ cb; } ;
struct r8192_priv {TYPE_1__* ieee80211; TYPE_2__* pFirmware; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ cmdpacket_frag_thresold; } ;
typedef TYPE_2__ rt_firmware ;
typedef int dev ;
struct TYPE_6__ {scalar_t__ txbuf_size; void* bLastIniPkt; int bCmdOrInit; int queue_index; } ;
typedef TYPE_3__ cb_desc ;
struct TYPE_4__ {int (* softmac_hard_start_xmit ) (struct sk_buff*,struct net_device*) ;} ;


 int DESC_PACKET_TYPE_INIT ;
 scalar_t__ MAX_DEV_ADDR_SIZE ;
 int TXCMD_QUEUE ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 int firmware_init_param (struct net_device*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memcpy (unsigned char*,struct net_device**,int) ;
 int skb_put (struct sk_buff*,int) ;
 int stub1 (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
        u32 buffer_len)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 bool rt_status = 1;
 u16 frag_threshold;
 u16 frag_length, frag_offset = 0;
 int i;

 rt_firmware *pfirmware = priv->pFirmware;
 struct sk_buff *skb;
 unsigned char *seg_ptr;
 cb_desc *tcb_desc;
 u8 bLastIniPkt;

 firmware_init_param(dev);


 frag_threshold = pfirmware->cmdpacket_frag_thresold;
 do {
  if ((buffer_len - frag_offset) > frag_threshold) {
   frag_length = frag_threshold ;
   bLastIniPkt = 0;
  } else {
   frag_length = buffer_len - frag_offset;
   bLastIniPkt = 1;
  }





  skb = dev_alloc_skb(frag_length + 4);
  memcpy((unsigned char *)(skb->cb), &dev, sizeof(dev));
  tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
  tcb_desc->queue_index = TXCMD_QUEUE;
  tcb_desc->bCmdOrInit = DESC_PACKET_TYPE_INIT;
  tcb_desc->bLastIniPkt = bLastIniPkt;

  seg_ptr = skb->data;




  for (i = 0; i < frag_length; i += 4) {
   *seg_ptr++ = ((i+0) < frag_length) ? code_virtual_address[i+3] : 0;
   *seg_ptr++ = ((i+1) < frag_length) ? code_virtual_address[i+2] : 0;
   *seg_ptr++ = ((i+2) < frag_length) ? code_virtual_address[i+1] : 0;
   *seg_ptr++ = ((i+3) < frag_length) ? code_virtual_address[i+0] : 0;
  }
  tcb_desc->txbuf_size = (u16)i;
  skb_put(skb, i);
  priv->ieee80211->softmac_hard_start_xmit(skb, dev);

  code_virtual_address += frag_length;
  frag_offset += frag_length;

 } while (frag_offset < buffer_len);

 return rt_status;
}
