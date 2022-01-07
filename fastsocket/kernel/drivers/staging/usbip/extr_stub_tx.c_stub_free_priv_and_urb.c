
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {int transfer_buffer; int setup_packet; } ;
struct stub_priv {int list; struct urb* urb; } ;


 int kfree (int ) ;
 int kmem_cache_free (int ,struct stub_priv*) ;
 int list_del (int *) ;
 int stub_priv_cache ;
 int usb_free_urb (struct urb*) ;

__attribute__((used)) static void stub_free_priv_and_urb(struct stub_priv *priv)
{
 struct urb *urb = priv->urb;

 kfree(urb->setup_packet);
 kfree(urb->transfer_buffer);
 list_del(&priv->list);
 kmem_cache_free(stub_priv_cache, priv);
 usb_free_urb(urb);
}
