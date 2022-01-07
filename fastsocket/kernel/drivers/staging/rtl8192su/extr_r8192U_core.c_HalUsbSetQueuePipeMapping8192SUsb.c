
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {size_t bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct r8192_priv {size_t ep_in_num; size_t ep_out_num; size_t ep_num; void** txqueue_to_outpipemap; void** RtOutPipes; void** RtInPipes; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;


 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int memcpy (void**,size_t*,int) ;
 int memset (void**,int ,int) ;
 int printk (char*,...) ;
 scalar_t__ usb_endpoint_is_bulk_in (struct usb_endpoint_descriptor*) ;
 scalar_t__ usb_endpoint_is_bulk_out (struct usb_endpoint_descriptor*) ;
 void* usb_endpoint_num (struct usb_endpoint_descriptor*) ;

__attribute__((used)) static void HalUsbSetQueuePipeMapping8192SUsb(struct usb_interface *intf, struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 struct usb_host_interface *iface_desc;
 struct usb_endpoint_descriptor *endpoint;
 u8 i = 0;

 priv->ep_in_num = 0;
 priv->ep_out_num = 0;
 memset(priv->RtOutPipes,0,16);
 memset(priv->RtInPipes,0,16);

 iface_desc = intf->cur_altsetting;
 priv->ep_num = iface_desc->desc.bNumEndpoints;

 for (i = 0; i < priv->ep_num; ++i) {
  endpoint = &iface_desc->endpoint[i].desc;
  if (usb_endpoint_is_bulk_in(endpoint)) {
   priv->RtInPipes[priv->ep_in_num] = usb_endpoint_num(endpoint);
   priv->ep_in_num ++;

  } else if (usb_endpoint_is_bulk_out(endpoint)) {
   priv->RtOutPipes[priv->ep_out_num] = usb_endpoint_num(endpoint);
   priv->ep_out_num ++;

  }
 }
 {
  memset(priv->txqueue_to_outpipemap,0,9);
  if (priv->ep_num == 6) {

   u8 queuetopipe[] = {3, 2, 1, 0, 4, 4, 4, 4, 4};

   memcpy(priv->txqueue_to_outpipemap,queuetopipe,9);
  } else if (priv->ep_num == 4) {

   u8 queuetopipe[] = {1, 1, 0, 0, 2, 2, 2, 2, 2};

   memcpy(priv->txqueue_to_outpipemap,queuetopipe,9);
  } else if (priv->ep_num > 9) {

   u8 queuetopipe[] = {3, 2, 1, 0, 4, 8, 7, 6, 5};

   memcpy(priv->txqueue_to_outpipemap,queuetopipe,9);
  } else {

   u8 queuetopipe[] = {0, 0, 0, 0, 0, 0, 0, 0, 0};
   memcpy(priv->txqueue_to_outpipemap,queuetopipe,9);
  }
 }
 printk("==>ep_num:%d, in_ep_num:%d, out_ep_num:%d\n", priv->ep_num, priv->ep_in_num, priv->ep_out_num);

 printk("==>RtInPipes:");
 for(i=0; i < priv->ep_in_num; i++)
  printk("%d  ", priv->RtInPipes[i]);
 printk("\n");

 printk("==>RtOutPipes:");
 for(i=0; i < priv->ep_out_num; i++)
  printk("%d  ", priv->RtOutPipes[i]);
 printk("\n");

 printk("==>txqueue_to_outpipemap for BK, BE, VI, VO, HCCA, TXCMD, MGNT, HIGH, BEACON:\n");
 for(i=0; i < 9; i++)
  printk("%d  ", priv->txqueue_to_outpipemap[i]);
 printk("\n");

 return;
}
