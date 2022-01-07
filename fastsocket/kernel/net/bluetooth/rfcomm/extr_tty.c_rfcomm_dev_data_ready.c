
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct sk_buff {int len; int data; } ;
struct rfcomm_dlc {struct rfcomm_dev* owner; } ;
struct rfcomm_dev {int pending; struct tty_struct* tty; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,struct tty_struct*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_queue_empty (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 int tty_insert_flip_string (struct tty_struct*,int ,int ) ;

__attribute__((used)) static void rfcomm_dev_data_ready(struct rfcomm_dlc *dlc, struct sk_buff *skb)
{
 struct rfcomm_dev *dev = dlc->owner;
 struct tty_struct *tty;

 if (!dev) {
  kfree_skb(skb);
  return;
 }

 if (!(tty = dev->tty) || !skb_queue_empty(&dev->pending)) {
  skb_queue_tail(&dev->pending, skb);
  return;
 }

 BT_DBG("dlc %p tty %p len %d", dlc, tty, skb->len);

 tty_insert_flip_string(tty, skb->data, skb->len);
 tty_flip_buffer_push(tty);

 kfree_skb(skb);
}
