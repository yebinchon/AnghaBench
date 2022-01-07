
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; int (* sk_state_change ) (struct sock*) ;} ;
struct sk_buff_head {int lock; struct sk_buff* next; } ;
struct sk_buff {struct sk_buff* next; } ;
struct iucv_path {struct sock* private; } ;
struct iucv_message {int tag; } ;
struct TYPE_2__ {struct sk_buff_head send_skb_q; } ;


 int CB_TAG (struct sk_buff*) ;
 int CB_TAG_LEN ;
 scalar_t__ IUCV_CLOSED ;
 scalar_t__ IUCV_CLOSING ;
 int __skb_unlink (struct sk_buff*,struct sk_buff_head*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 TYPE_1__* iucv_sk (struct sock*) ;
 int iucv_sock_wake_msglim (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 int memcmp (int *,int ,int ) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void iucv_callback_txdone(struct iucv_path *path,
     struct iucv_message *msg)
{
 struct sock *sk = path->private;
 struct sk_buff *this = ((void*)0);
 struct sk_buff_head *list = &iucv_sk(sk)->send_skb_q;
 struct sk_buff *list_skb = list->next;
 unsigned long flags;

 bh_lock_sock(sk);
 if (!skb_queue_empty(list)) {
  spin_lock_irqsave(&list->lock, flags);

  while (list_skb != (struct sk_buff *)list) {
   if (!memcmp(&msg->tag, CB_TAG(list_skb), CB_TAG_LEN)) {
    this = list_skb;
    break;
   }
   list_skb = list_skb->next;
  }
  if (this)
   __skb_unlink(this, list);

  spin_unlock_irqrestore(&list->lock, flags);

  if (this) {
   kfree_skb(this);

   iucv_sock_wake_msglim(sk);
  }
 }

 if (sk->sk_state == IUCV_CLOSING) {
  if (skb_queue_empty(&iucv_sk(sk)->send_skb_q)) {
   sk->sk_state = IUCV_CLOSED;
   sk->sk_state_change(sk);
  }
 }
 bh_unlock_sock(sk);

}
