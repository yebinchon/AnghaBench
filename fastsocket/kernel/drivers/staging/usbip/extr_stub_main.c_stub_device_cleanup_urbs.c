
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int * setup_packet; int * transfer_buffer; } ;
struct stub_priv {struct urb* urb; } ;
struct stub_device {int * setup_packet; int * transfer_buffer; } ;


 int kfree (int *) ;
 int kmem_cache_free (int ,struct stub_priv*) ;
 int stub_priv_cache ;
 struct stub_priv* stub_priv_pop (struct urb*) ;
 int usb_free_urb (struct urb*) ;
 int usb_kill_urb (struct urb*) ;
 int usbip_udbg (char*,struct urb*) ;

void stub_device_cleanup_urbs(struct stub_device *sdev)
{
 struct stub_priv *priv;

 usbip_udbg("free sdev %p\n", sdev);

 while ((priv = stub_priv_pop(sdev))) {
  struct urb *urb = priv->urb;

  usbip_udbg("   free urb %p\n", urb);
  usb_kill_urb(urb);

  kmem_cache_free(stub_priv_cache, priv);

  if (urb->transfer_buffer != ((void*)0))
   kfree(urb->transfer_buffer);

  if (urb->setup_packet != ((void*)0))
   kfree(urb->setup_packet);

  usb_free_urb(urb);
 }
}
