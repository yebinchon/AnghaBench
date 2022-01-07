
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int (* sk_data_ready ) (struct sock*,int ) ;int sk_receive_queue; } ;
struct sk_buff {int len; int truesize; } ;
struct atmarp_ctrl {int type; int itf_num; int ip; } ;
typedef enum atmarp_ctrl_type { ____Placeholder_atmarp_ctrl_type } atmarp_ctrl_type ;
typedef int __be32 ;


 int ENOMEM ;
 int EUNATCH ;
 int GFP_ATOMIC ;
 struct sk_buff* alloc_skb (int,int ) ;
 int atm_force_charge (int ,int ) ;
 int atmarpd ;
 int pr_debug (char*,int) ;
 struct sock* sk_atm (int ) ;
 scalar_t__ skb_put (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int stub1 (struct sock*,int ) ;

__attribute__((used)) static int to_atmarpd(enum atmarp_ctrl_type type, int itf, __be32 ip)
{
 struct sock *sk;
 struct atmarp_ctrl *ctrl;
 struct sk_buff *skb;

 pr_debug("to_atmarpd(%d)\n", type);
 if (!atmarpd)
  return -EUNATCH;
 skb = alloc_skb(sizeof(struct atmarp_ctrl),GFP_ATOMIC);
 if (!skb)
  return -ENOMEM;
 ctrl = (struct atmarp_ctrl *) skb_put(skb,sizeof(struct atmarp_ctrl));
 ctrl->type = type;
 ctrl->itf_num = itf;
 ctrl->ip = ip;
 atm_force_charge(atmarpd, skb->truesize);

 sk = sk_atm(atmarpd);
 skb_queue_tail(&sk->sk_receive_queue, skb);
 sk->sk_data_ready(sk, skb->len);
 return 0;
}
