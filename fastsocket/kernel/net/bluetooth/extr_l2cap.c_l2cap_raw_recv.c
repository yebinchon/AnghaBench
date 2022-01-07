
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_type; } ;
struct sk_buff {struct sock* sk; } ;
struct l2cap_chan_list {int lock; struct sock* head; } ;
struct l2cap_conn {struct l2cap_chan_list chan_list; } ;
struct TYPE_2__ {struct sock* next_c; } ;


 int BT_DBG (char*,struct l2cap_conn*) ;
 int GFP_ATOMIC ;
 scalar_t__ SOCK_RAW ;
 int kfree_skb (struct sk_buff*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 scalar_t__ sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static void l2cap_raw_recv(struct l2cap_conn *conn, struct sk_buff *skb)
{
 struct l2cap_chan_list *l = &conn->chan_list;
 struct sk_buff *nskb;
 struct sock *sk;

 BT_DBG("conn %p", conn);

 read_lock(&l->lock);
 for (sk = l->head; sk; sk = l2cap_pi(sk)->next_c) {
  if (sk->sk_type != SOCK_RAW)
   continue;


  if (skb->sk == sk)
   continue;
  nskb = skb_clone(skb, GFP_ATOMIC);
  if (!nskb)
   continue;

  if (sock_queue_rcv_skb(sk, nskb))
   kfree_skb(nskb);
 }
 read_unlock(&l->lock);
}
