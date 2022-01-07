
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct udphdr {int dummy; } ;
struct udp_sock {int encap_type; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct iphdr {int ihl; int tot_len; } ;
struct ip_esp_hdr {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;
typedef int __be32 ;


 int GFP_ATOMIC ;
 int IPPROTO_ESP ;


 int __skb_pull (struct sk_buff*,int) ;
 int htons (scalar_t__) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ min (int,int) ;
 scalar_t__ ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 scalar_t__ skb_unclone (struct sk_buff*,int ) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;
 struct udp_sock* udp_sk (struct sock*) ;
 int xfrm4_rcv_encap (struct sk_buff*,int ,int ,int) ;

int xfrm4_udp_encap_rcv(struct sock *sk, struct sk_buff *skb)
{
 struct udp_sock *up = udp_sk(sk);
 struct udphdr *uh;
 struct iphdr *iph;
 int iphlen, len;

 __u8 *udpdata;
 __be32 *udpdata32;
 __u16 encap_type = up->encap_type;


 if (!encap_type)
  return 1;



 len = skb->len - sizeof(struct udphdr);
 if (!pskb_may_pull(skb, sizeof(struct udphdr) + min(len, 8)))
  return 1;


 uh = udp_hdr(skb);
 udpdata = (__u8 *)uh + sizeof(struct udphdr);
 udpdata32 = (__be32 *)udpdata;

 switch (encap_type) {
 default:
 case 129:

  if (len == 1 && udpdata[0] == 0xff) {
   goto drop;
  } else if (len > sizeof(struct ip_esp_hdr) && udpdata32[0] != 0) {

   len = sizeof(struct udphdr);
  } else

   return 1;
  break;
 case 128:

  if (len == 1 && udpdata[0] == 0xff) {
   goto drop;
  } else if (len > 2 * sizeof(u32) + sizeof(struct ip_esp_hdr) &&
      udpdata32[0] == 0 && udpdata32[1] == 0) {


   len = sizeof(struct udphdr) + 2 * sizeof(u32);
  } else

   return 1;
  break;
 }






 if (skb_unclone(skb, GFP_ATOMIC))
  goto drop;


 iph = ip_hdr(skb);
 iphlen = iph->ihl << 2;
 iph->tot_len = htons(ntohs(iph->tot_len) - len);
 if (skb->len < iphlen + len) {

  goto drop;
 }





 __skb_pull(skb, len);
 skb_reset_transport_header(skb);


 return xfrm4_rcv_encap(skb, IPPROTO_ESP, 0, encap_type);

drop:
 kfree_skb(skb);
 return 0;
}
