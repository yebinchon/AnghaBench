
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ cb; } ;
struct r8192_priv {TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
typedef int dev ;
struct TYPE_4__ {size_t queue_index; scalar_t__ txbuf_size; scalar_t__ bLastIniPkt; int bCmdOrInit; } ;
typedef TYPE_2__ cb_desc ;
struct TYPE_3__ {int (* softmac_hard_start_xmit ) (struct sk_buff*,struct net_device*) ;int * skb_waitQ; scalar_t__ queue_stop; int (* check_nic_enough_desc ) (struct net_device*,size_t) ;} ;


 int COMP_FIRMWARE ;
 int DESC_PACKET_TYPE_NORMAL ;
 scalar_t__ MAX_DEV_ADDR_SIZE ;
 int RT_TRACE (int ,char*) ;
 size_t TXCMD_QUEUE ;
 scalar_t__ USB_HWDESC_HEADER_LEN ;
 struct sk_buff* dev_alloc_skb (scalar_t__) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memcpy (unsigned char*,void*,int) ;
 int memset (unsigned char*,int ,scalar_t__) ;
 unsigned char* skb_put (struct sk_buff*,scalar_t__) ;
 int skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int skb_reserve (struct sk_buff*,scalar_t__) ;
 int stub1 (struct net_device*,size_t) ;
 int stub2 (struct sk_buff*,struct net_device*) ;

bool
SendTxCommandPacket(
 struct net_device *dev,
 void* pData,
 u32 DataLen
 )
{
 bool rtStatus = 1;
 struct r8192_priv *priv = ieee80211_priv(dev);
 struct sk_buff *skb;
 cb_desc *tcb_desc;
 unsigned char *ptr_buf;





 skb = dev_alloc_skb(USB_HWDESC_HEADER_LEN + DataLen + 4);
 memcpy((unsigned char *)(skb->cb),&dev,sizeof(dev));
 tcb_desc = (cb_desc*)(skb->cb + MAX_DEV_ADDR_SIZE);
 tcb_desc->queue_index = TXCMD_QUEUE;
 tcb_desc->bCmdOrInit = DESC_PACKET_TYPE_NORMAL;
 tcb_desc->bLastIniPkt = 0;
 skb_reserve(skb, USB_HWDESC_HEADER_LEN);
 ptr_buf = skb_put(skb, DataLen);
 memset(ptr_buf,0,DataLen);
 memcpy(ptr_buf,pData,DataLen);
 tcb_desc->txbuf_size= (u16)DataLen;

 if(!priv->ieee80211->check_nic_enough_desc(dev,tcb_desc->queue_index)||
   (!skb_queue_empty(&priv->ieee80211->skb_waitQ[tcb_desc->queue_index]))|| (priv->ieee80211->queue_stop) ) {

   RT_TRACE(COMP_FIRMWARE,"===================NULL packet==================================> tx full!\n");
   skb_queue_tail(&priv->ieee80211->skb_waitQ[tcb_desc->queue_index], skb);
  } else {
   priv->ieee80211->softmac_hard_start_xmit(skb,dev);
  }


 return rtStatus;
}
