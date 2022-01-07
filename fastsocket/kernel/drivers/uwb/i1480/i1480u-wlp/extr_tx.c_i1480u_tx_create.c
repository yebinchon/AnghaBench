
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wlp_tx_hdr {int dummy; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; } ;
struct untd_hdr_cmp {int dummy; } ;
struct sk_buff {size_t const len; int data; } ;
struct i1480u_tx {size_t const buf_size; struct i1480u_tx* urb; int list_node; int buf; } ;
struct i1480u {int tx_list_lock; int tx_list; int usb_dev; TYPE_3__* usb_iface; } ;
typedef int gfp_t ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_5__ {TYPE_1__* endpoint; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;


 int i1480u_MAX_FRG_SIZE ;
 int i1480u_tx_cb ;
 int i1480u_tx_create_1 (struct i1480u_tx*,struct sk_buff*,int ) ;
 int i1480u_tx_create_n (struct i1480u_tx*,struct sk_buff*,int ) ;
 int kfree (struct i1480u_tx*) ;
 struct i1480u_tx* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct i1480u_tx* usb_alloc_urb (int ,int ) ;
 int usb_fill_bulk_urb (struct i1480u_tx*,int ,int,int ,size_t const,int ,struct i1480u_tx*) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static
struct i1480u_tx *i1480u_tx_create(struct i1480u *i1480u,
       struct sk_buff *skb, gfp_t gfp_mask)
{
 int result;
 struct usb_endpoint_descriptor *epd;
 int usb_pipe;
 unsigned long flags;

 struct i1480u_tx *wtx;
 const size_t pl_max_size =
  i1480u_MAX_FRG_SIZE - sizeof(struct untd_hdr_cmp)
  - sizeof(struct wlp_tx_hdr);

 wtx = kmalloc(sizeof(*wtx), gfp_mask);
 if (wtx == ((void*)0))
  goto error_wtx_alloc;
 wtx->urb = usb_alloc_urb(0, gfp_mask);
 if (wtx->urb == ((void*)0))
  goto error_urb_alloc;
 epd = &i1480u->usb_iface->cur_altsetting->endpoint[2].desc;
 usb_pipe = usb_sndbulkpipe(i1480u->usb_dev, epd->bEndpointAddress);

 if (skb->len > pl_max_size) {
  result = i1480u_tx_create_n(wtx, skb, gfp_mask);
  if (result < 0)
   goto error_create;
  usb_fill_bulk_urb(wtx->urb, i1480u->usb_dev, usb_pipe,
      wtx->buf, wtx->buf_size, i1480u_tx_cb, wtx);
 } else {
  result = i1480u_tx_create_1(wtx, skb, gfp_mask);
  if (result < 0)
   goto error_create;
  usb_fill_bulk_urb(wtx->urb, i1480u->usb_dev, usb_pipe,
      skb->data, skb->len, i1480u_tx_cb, wtx);
 }
 spin_lock_irqsave(&i1480u->tx_list_lock, flags);
 list_add(&wtx->list_node, &i1480u->tx_list);
 spin_unlock_irqrestore(&i1480u->tx_list_lock, flags);
 return wtx;

error_create:
 kfree(wtx->urb);
error_urb_alloc:
 kfree(wtx);
error_wtx_alloc:
 return ((void*)0);
}
