
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {scalar_t__ check; int len; int dest; int source; } ;
struct sock {scalar_t__ sk_no_check; int sk_protocol; } ;
struct sk_buff {int len; scalar_t__ ip_summed; struct sock* sk; } ;
struct rtable {int rt_src; } ;
struct inet_sock {int recverr; int sport; } ;
typedef int __wsum ;
typedef int __be32 ;


 scalar_t__ CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_PARTIAL ;
 scalar_t__ CSUM_MANGLED_0 ;
 int ENOBUFS ;
 int IS_UDPLITE (struct sock*) ;
 scalar_t__ UDP_CSUM_NOXMIT ;
 int UDP_INC_STATS_USER (int ,int ,int) ;
 int UDP_MIB_OUTDATAGRAMS ;
 int UDP_MIB_SNDBUFERRORS ;
 scalar_t__ csum_tcpudp_magic (int ,int ,int,int ,int ) ;
 int htons (int) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ip_send_skb (struct sk_buff*) ;
 scalar_t__ skb_dst (struct sk_buff*) ;
 int skb_transport_offset (struct sk_buff*) ;
 int sock_net (struct sock*) ;
 int udp4_hwcsum (struct sk_buff*,int ,int ) ;
 int udp_csum (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;
 int udplite_csum (struct sk_buff*) ;

__attribute__((used)) static int udp_send_skb(struct sk_buff *skb, __be32 daddr, __be32 dport)
{
 struct sock *sk = skb->sk;
 struct inet_sock *inet = inet_sk(sk);
 struct udphdr *uh;
 struct rtable *rt = (struct rtable *)skb_dst(skb);
 int err = 0;
 int is_udplite = IS_UDPLITE(sk);
 int offset = skb_transport_offset(skb);
 int len = skb->len - offset;
 __wsum csum = 0;




 uh = udp_hdr(skb);
 uh->source = inet->sport;
 uh->dest = dport;
 uh->len = htons(len);
 uh->check = 0;

 if (is_udplite)
  csum = udplite_csum(skb);

 else if (sk->sk_no_check == UDP_CSUM_NOXMIT) {

  skb->ip_summed = CHECKSUM_NONE;
  goto send;

 } else if (skb->ip_summed == CHECKSUM_PARTIAL) {

  udp4_hwcsum(skb, rt->rt_src, daddr);
  goto send;

 } else
  csum = udp_csum(skb);


 uh->check = csum_tcpudp_magic(rt->rt_src, daddr, len,
          sk->sk_protocol, csum);
 if (uh->check == 0)
  uh->check = CSUM_MANGLED_0;

send:
 err = ip_send_skb(skb);
 if (err) {
  if (err == -ENOBUFS && !inet->recverr) {
   UDP_INC_STATS_USER(sock_net(sk),
        UDP_MIB_SNDBUFERRORS, is_udplite);
   err = 0;
  }
 } else
  UDP_INC_STATS_USER(sock_net(sk),
       UDP_MIB_OUTDATAGRAMS, is_udplite);
 return err;
}
