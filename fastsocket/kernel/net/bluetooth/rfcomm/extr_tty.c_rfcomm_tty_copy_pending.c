
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct sk_buff {int len; int data; } ;
struct rfcomm_dev {int dlc; int pending; struct tty_struct* tty; } ;


 int BT_DBG (char*,struct rfcomm_dev*,struct tty_struct*) ;
 int kfree_skb (struct sk_buff*) ;
 int rfcomm_dlc_lock (int ) ;
 int rfcomm_dlc_unlock (int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int tty_flip_buffer_push (struct tty_struct*) ;
 scalar_t__ tty_insert_flip_string (struct tty_struct*,int ,int ) ;

__attribute__((used)) static void rfcomm_tty_copy_pending(struct rfcomm_dev *dev)
{
 struct tty_struct *tty = dev->tty;
 struct sk_buff *skb;
 int inserted = 0;

 if (!tty)
  return;

 BT_DBG("dev %p tty %p", dev, tty);

 rfcomm_dlc_lock(dev->dlc);

 while ((skb = skb_dequeue(&dev->pending))) {
  inserted += tty_insert_flip_string(tty, skb->data, skb->len);
  kfree_skb(skb);
 }

 rfcomm_dlc_unlock(dev->dlc);

 if (inserted > 0)
  tty_flip_buffer_push(tty);
}
