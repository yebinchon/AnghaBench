
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct l2cap_pinfo {TYPE_1__* conn; } ;
struct TYPE_2__ {int hcon; } ;


 int BT_DBG (char*,struct sock*,struct sk_buff*,int ) ;
 int hci_send_acl (int ,struct sk_buff*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct l2cap_pinfo* l2cap_pi (struct sock*) ;

__attribute__((used)) static inline int l2cap_do_send(struct sock *sk, struct sk_buff *skb)
{
 struct l2cap_pinfo *pi = l2cap_pi(sk);
 int err;

 BT_DBG("sk %p, skb %p len %d", sk, skb, skb->len);

 err = hci_send_acl(pi->conn->hcon, skb, 0);
 if (err < 0)
  kfree_skb(skb);

 return err;
}
