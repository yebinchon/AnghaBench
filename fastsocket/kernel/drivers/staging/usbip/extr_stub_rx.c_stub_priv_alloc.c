
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int seqnum; } ;
struct usbip_header {TYPE_2__ base; } ;
struct usbip_device {int dummy; } ;
struct stub_priv {int list; struct stub_device* sdev; int seqnum; } ;
struct stub_device {int priv_lock; int priv_init; TYPE_1__* interface; struct usbip_device ud; } ;
struct TYPE_3__ {int dev; } ;


 int GFP_ATOMIC ;
 int SDEV_EVENT_ERROR_MALLOC ;
 int dev_err (int *,char*) ;
 struct stub_priv* kmem_cache_zalloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub_priv_cache ;
 int usbip_event_add (struct usbip_device*,int ) ;

__attribute__((used)) static struct stub_priv *stub_priv_alloc(struct stub_device *sdev,
      struct usbip_header *pdu)
{
 struct stub_priv *priv;
 struct usbip_device *ud = &sdev->ud;
 unsigned long flags;

 spin_lock_irqsave(&sdev->priv_lock, flags);

 priv = kmem_cache_zalloc(stub_priv_cache, GFP_ATOMIC);
 if (!priv) {
  dev_err(&sdev->interface->dev, "alloc stub_priv\n");
  spin_unlock_irqrestore(&sdev->priv_lock, flags);
  usbip_event_add(ud, SDEV_EVENT_ERROR_MALLOC);
  return ((void*)0);
 }

 priv->seqnum = pdu->base.seqnum;
 priv->sdev = sdev;





 list_add_tail(&priv->list, &sdev->priv_init);

 spin_unlock_irqrestore(&sdev->priv_lock, flags);

 return priv;
}
