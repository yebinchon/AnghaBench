
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct udphdr {int dest; int source; } ;
struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int mark; int dev; } ;
struct iphdr {int daddr; int saddr; int protocol; } ;
typedef int _hdr ;
typedef int __be32 ;
typedef int __be16 ;


 int NFT_LOOKUP_ESTABLISHED ;
 int NFT_LOOKUP_LISTENER ;
 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 scalar_t__ TCP_TIME_WAIT ;
 int dev_net (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 int nf_tproxy_assign_sock (struct sk_buff*,struct sock*) ;
 struct sock* nf_tproxy_get_sock_v4 (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int ntohs (int ) ;
 int pr_debug (char*,int ,int *,int ,int *,int ,int) ;
 struct udphdr* skb_header_pointer (struct sk_buff*,int ,int,struct udphdr*) ;
 struct sock* tproxy_handle_time_wait4 (struct sk_buff*,int ,int ,struct sock*) ;
 int tproxy_laddr4 (struct sk_buff*,int ,int ) ;
 scalar_t__ tproxy_sk_is_transparent (struct sock*) ;

__attribute__((used)) static unsigned int
tproxy_tg4(struct sk_buff *skb, __be32 laddr, __be16 lport,
    u_int32_t mark_mask, u_int32_t mark_value)
{
 const struct iphdr *iph = ip_hdr(skb);
 struct udphdr _hdr, *hp;
 struct sock *sk;

 hp = skb_header_pointer(skb, ip_hdrlen(skb), sizeof(_hdr), &_hdr);
 if (hp == ((void*)0))
  return NF_DROP;





 sk = nf_tproxy_get_sock_v4(dev_net(skb->dev), iph->protocol,
       iph->saddr, iph->daddr,
       hp->source, hp->dest,
       skb->dev, NFT_LOOKUP_ESTABLISHED);

 laddr = tproxy_laddr4(skb, laddr, iph->daddr);
 if (!lport)
  lport = hp->dest;


 if (sk && sk->sk_state == TCP_TIME_WAIT)

  sk = tproxy_handle_time_wait4(skb, laddr, lport, sk);
 else if (!sk)


  sk = nf_tproxy_get_sock_v4(dev_net(skb->dev), iph->protocol,
        iph->saddr, laddr,
        hp->source, lport,
        skb->dev, NFT_LOOKUP_LISTENER);


 if (sk && tproxy_sk_is_transparent(sk)) {


  skb->mark = (skb->mark & ~mark_mask) ^ mark_value;

  pr_debug("redirecting: proto %hhu %pI4:%hu -> %pI4:%hu, mark: %x\n",
    iph->protocol, &iph->daddr, ntohs(hp->dest),
    &laddr, ntohs(lport), skb->mark);

  nf_tproxy_assign_sock(skb, sk);
  return NF_ACCEPT;
 }

 pr_debug("no socket, dropping: proto %hhu %pI4:%hu -> %pI4:%hu, mark: %x\n",
   iph->protocol, &iph->saddr, ntohs(hp->source),
   &iph->daddr, ntohs(hp->dest), skb->mark);
 return NF_DROP;
}
