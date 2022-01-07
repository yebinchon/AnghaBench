
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {scalar_t__ dest; int source; int fin; int ack; int rst; scalar_t__ syn; } ;
struct sock {int dummy; } ;
struct sk_buff {int dev; } ;
struct iphdr {scalar_t__ daddr; int saddr; int protocol; } ;
typedef int _hdr ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;


 int NFT_LOOKUP_LISTENER ;
 int dev_net (int ) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_deschedule (int ,int *) ;
 int inet_twsk_put (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 struct sock* nf_tproxy_get_sock_v4 (int ,int ,int ,scalar_t__,int ,scalar_t__,int ,int ) ;
 struct tcphdr* skb_header_pointer (struct sk_buff*,int ,int,struct tcphdr*) ;
 int tcp_death_row ;

__attribute__((used)) static struct sock *
tproxy_handle_time_wait4(struct sk_buff *skb, __be32 laddr, __be16 lport,
   struct sock *sk)
{
 const struct iphdr *iph = ip_hdr(skb);
 struct tcphdr _hdr, *hp;

 hp = skb_header_pointer(skb, ip_hdrlen(skb), sizeof(_hdr), &_hdr);
 if (hp == ((void*)0)) {
  inet_twsk_put(inet_twsk(sk));
  return ((void*)0);
 }

 if (hp->syn && !hp->rst && !hp->ack && !hp->fin) {


  struct sock *sk2;

  sk2 = nf_tproxy_get_sock_v4(dev_net(skb->dev), iph->protocol,
         iph->saddr, laddr ? laddr : iph->daddr,
         hp->source, lport ? lport : hp->dest,
         skb->dev, NFT_LOOKUP_LISTENER);
  if (sk2) {
   inet_twsk_deschedule(inet_twsk(sk), &tcp_death_row);
   inet_twsk_put(inet_twsk(sk));
   sk = sk2;
  }
 }

 return sk;
}
