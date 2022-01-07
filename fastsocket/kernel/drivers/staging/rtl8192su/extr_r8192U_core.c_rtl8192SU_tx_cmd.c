
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {scalar_t__ PktSize; int LINIP; } ;
typedef TYPE_1__ tx_desc_cmd_819x_usb ;
struct urb {int dummy; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; scalar_t__ cb; } ;
struct r8192_priv {int * RtOutPipes; int udev; int * tx_pending; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {size_t queue_index; int bLastIniPkt; } ;
typedef TYPE_2__ cb_desc ;


 short ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ MAX_DEV_ADDR_SIZE ;
 scalar_t__ USB_HWDESC_HEADER_LEN ;
 int atomic_inc (int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memset (TYPE_1__*,int ,scalar_t__) ;
 int printk (char*,int) ;
 int rtl8192_tx_isr ;
 unsigned int txqueue2outpipe (struct r8192_priv*,size_t) ;
 struct urb* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,scalar_t__,scalar_t__,int ,struct sk_buff*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

short rtl8192SU_tx_cmd(struct net_device *dev, struct sk_buff *skb)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 int status;
 struct urb *tx_urb;
 unsigned int idx_pipe;
 tx_desc_cmd_819x_usb *pdesc = (tx_desc_cmd_819x_usb *)skb->data;
 cb_desc *tcb_desc = (cb_desc *)(skb->cb + MAX_DEV_ADDR_SIZE);
 u8 queue_index = tcb_desc->queue_index;
 u32 PktSize = 0;


 atomic_inc(&priv->tx_pending[queue_index]);

 tx_urb = usb_alloc_urb(0,GFP_ATOMIC);
 if(!tx_urb){
  dev_kfree_skb(skb);
  return -ENOMEM;
 }

 memset(pdesc, 0, USB_HWDESC_HEADER_LEN);


 pdesc->LINIP = tcb_desc->bLastIniPkt;
 PktSize = (u16)(skb->len - USB_HWDESC_HEADER_LEN);
 pdesc->PktSize = PktSize;





 idx_pipe = txqueue2outpipe(priv,queue_index);


 usb_fill_bulk_urb(tx_urb,
                             priv->udev,
                             usb_sndbulkpipe(priv->udev,priv->RtOutPipes[idx_pipe]),
                             skb->data,
                             skb->len,
                             rtl8192_tx_isr,
                             skb);

 status = usb_submit_urb(tx_urb, GFP_ATOMIC);
 if (!status){
  return 0;
 }else{
  printk("Error TX CMD URB, error %d",
    status);
  return -1;
 }
}
