
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ sk_protocol; int sk_mark; int sk_priority; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; scalar_t__ len; int local_df; int mark; int priority; int * sk; int * destructor; scalar_t__ truesize; int data_len; struct sk_buff* next; } ;
struct TYPE_3__ {int dst; } ;
struct rtable {scalar_t__ rt_type; TYPE_1__ u; int rt_dst; int rt_src; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; scalar_t__ protocol; int daddr; int saddr; int ttl; int frag_off; int tos; } ;
struct ip_options {int optlen; } ;
struct inet_sock {scalar_t__ pmtudisc; int tos; int mc_ttl; } ;
struct inet_cork {int flags; int * dst; int addr; struct ip_options* opt; } ;
struct icmphdr {int type; } ;
typedef int __u8 ;
typedef int __be16 ;
struct TYPE_4__ {struct sk_buff* frag_list; } ;


 int IPCORK_OPT ;
 scalar_t__ IPPROTO_ICMP ;
 int IP_DF ;
 scalar_t__ IP_PMTUDISC_DO ;
 scalar_t__ RTN_MULTICAST ;
 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_pull (struct sk_buff*,int ) ;
 scalar_t__ dst_mtu (int *) ;
 int htons (int ) ;
 int icmp_out_count (struct net*,int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_cork_release (struct inet_cork*) ;
 scalar_t__ ip_dont_fragment (struct sock*,int *) ;
 int ip_options_build (struct sk_buff*,struct ip_options*,int ,struct rtable*,int ) ;
 int ip_select_ident (struct iphdr*,int *,struct sock*) ;
 int ip_select_ttl (struct inet_sock*,int *) ;
 int skb_dst_set (struct sk_buff*,int *) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;
 int skb_network_header_len (struct sk_buff*) ;
 int skb_network_offset (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ skb_transport_header (struct sk_buff*) ;
 struct net* sock_net (struct sock*) ;

struct sk_buff *__ip_make_skb(struct sock *sk,
         struct sk_buff_head *queue,
         struct inet_cork *cork)
{
 struct sk_buff *skb, *tmp_skb;
 struct sk_buff **tail_skb;
 struct inet_sock *inet = inet_sk(sk);
 struct net *net = sock_net(sk);
 struct ip_options *opt = ((void*)0);
 struct rtable *rt = (struct rtable *)cork->dst;
 struct iphdr *iph;
 __be16 df = 0;
 __u8 ttl;

 if ((skb = __skb_dequeue(queue)) == ((void*)0))
  goto out;
 tail_skb = &(skb_shinfo(skb)->frag_list);


 if (skb->data < skb_network_header(skb))
  __skb_pull(skb, skb_network_offset(skb));
 while ((tmp_skb = __skb_dequeue(queue)) != ((void*)0)) {
  __skb_pull(tmp_skb, skb_network_header_len(skb));
  *tail_skb = tmp_skb;
  tail_skb = &(tmp_skb->next);
  skb->len += tmp_skb->len;
  skb->data_len += tmp_skb->len;
  skb->truesize += tmp_skb->truesize;
  tmp_skb->destructor = ((void*)0);
  tmp_skb->sk = ((void*)0);
 }





 if (inet->pmtudisc < IP_PMTUDISC_DO)
  skb->local_df = 1;




 if (inet->pmtudisc >= IP_PMTUDISC_DO ||
     (skb->len <= dst_mtu(&rt->u.dst) &&
      ip_dont_fragment(sk, &rt->u.dst)))
  df = htons(IP_DF);

 if (cork->flags & IPCORK_OPT)
  opt = cork->opt;

 if (rt->rt_type == RTN_MULTICAST)
  ttl = inet->mc_ttl;
 else
  ttl = ip_select_ttl(inet, &rt->u.dst);

 iph = (struct iphdr *)skb->data;
 iph->version = 4;
 iph->ihl = 5;
 if (opt) {
  iph->ihl += opt->optlen>>2;
  ip_options_build(skb, opt, cork->addr, rt, 0);
 }
 iph->tos = inet->tos;
 iph->frag_off = df;
 ip_select_ident(iph, &rt->u.dst, sk);
 iph->ttl = ttl;
 iph->protocol = sk->sk_protocol;
 iph->saddr = rt->rt_src;
 iph->daddr = rt->rt_dst;

 skb->priority = sk->sk_priority;
 skb->mark = sk->sk_mark;




 cork->dst = ((void*)0);
 skb_dst_set(skb, &rt->u.dst);

 if (iph->protocol == IPPROTO_ICMP)
  icmp_out_count(net, ((struct icmphdr *)
   skb_transport_header(skb))->type);


 ip_cork_release(cork);
out:
 return skb;
}
