
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; } ;
struct sk_buff {scalar_t__ protocol; int len; } ;
struct TYPE_2__ {scalar_t__ all; } ;
struct ipv6_pinfo {TYPE_1__ rxopt; } ;


 scalar_t__ DCCP_LISTEN ;
 scalar_t__ DCCP_OPEN ;
 int ETH_P_IP ;
 int GFP_ATOMIC ;
 int __kfree_skb (struct sk_buff*) ;
 scalar_t__ dccp_child_process (struct sock*,struct sock*,struct sk_buff*) ;
 int dccp_hdr (struct sk_buff*) ;
 scalar_t__ dccp_rcv_established (struct sock*,struct sk_buff*,int ,int ) ;
 scalar_t__ dccp_rcv_state_process (struct sock*,struct sk_buff*,int ,int ) ;
 int dccp_v4_do_rcv (struct sock*,struct sk_buff*) ;
 int dccp_v6_ctl_send_reset (struct sock*,struct sk_buff*) ;
 struct sock* dccp_v6_hnd_req (struct sock*,struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ sk_filter (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;

__attribute__((used)) static int dccp_v6_do_rcv(struct sock *sk, struct sk_buff *skb)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct sk_buff *opt_skb = ((void*)0);
 if (skb->protocol == htons(ETH_P_IP))
  return dccp_v4_do_rcv(sk, skb);

 if (sk_filter(sk, skb))
  goto discard;
 if (np->rxopt.all)




  opt_skb = skb_clone(skb, GFP_ATOMIC);

 if (sk->sk_state == DCCP_OPEN) {
  if (dccp_rcv_established(sk, skb, dccp_hdr(skb), skb->len))
   goto reset;
  if (opt_skb) {

   __kfree_skb(opt_skb);
  }
  return 0;
 }
 if (sk->sk_state == DCCP_LISTEN) {
  struct sock *nsk = dccp_v6_hnd_req(sk, skb);

  if (nsk == ((void*)0))
   goto discard;





  if (nsk != sk) {
   if (dccp_child_process(sk, nsk, skb))
    goto reset;
   if (opt_skb != ((void*)0))
    __kfree_skb(opt_skb);
   return 0;
  }
 }

 if (dccp_rcv_state_process(sk, skb, dccp_hdr(skb), skb->len))
  goto reset;
 if (opt_skb) {

  __kfree_skb(opt_skb);
 }
 return 0;

reset:
 dccp_v6_ctl_send_reset(sk, skb);
discard:
 if (opt_skb != ((void*)0))
  __kfree_skb(opt_skb);
 kfree_skb(skb);
 return 0;
}
