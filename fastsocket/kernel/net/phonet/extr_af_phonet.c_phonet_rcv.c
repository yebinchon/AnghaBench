
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sockaddr_pn {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct phonethdr {int pn_length; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int NET_RX_DROP ;
 scalar_t__ can_respond (struct sk_buff*) ;
 struct net* dev_net (struct net_device*) ;
 int get_unaligned_be16 (int *) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ phonet_address_lookup (struct net*,int ) ;
 struct sock* pn_find_sock_by_sa (struct net*,struct sockaddr_pn*) ;
 struct phonethdr* pn_hdr (struct sk_buff*) ;
 int pn_skb_get_dst_sockaddr (struct sk_buff*,struct sockaddr_pn*) ;
 int pn_sockaddr_get_addr (struct sockaddr_pn*) ;
 int pskb_pull (struct sk_buff*,int) ;
 scalar_t__ pskb_trim (struct sk_buff*,int) ;
 int send_obj_unreachable (struct sk_buff*) ;
 int send_reset_indications (struct sk_buff*) ;
 int sk_receive_skb (struct sock*,struct sk_buff*,int ) ;
 int skb_reset_transport_header (struct sk_buff*) ;

__attribute__((used)) static int phonet_rcv(struct sk_buff *skb, struct net_device *dev,
   struct packet_type *pkttype,
   struct net_device *orig_dev)
{
 struct net *net = dev_net(dev);
 struct phonethdr *ph;
 struct sockaddr_pn sa;
 u16 len;


 if (!pskb_pull(skb, sizeof(struct phonethdr)))
  goto out;


 ph = pn_hdr(skb);
 len = get_unaligned_be16(&ph->pn_length);
 if (len < 2)
  goto out;
 len -= 2;
 if ((len > skb->len) || pskb_trim(skb, len))
  goto out;
 skb_reset_transport_header(skb);

 pn_skb_get_dst_sockaddr(skb, &sa);


 if (phonet_address_lookup(net, pn_sockaddr_get_addr(&sa)) == 0) {

  struct sock *sk = pn_find_sock_by_sa(net, &sa);

  if (sk)
   return sk_receive_skb(sk, skb, 0);

  if (can_respond(skb)) {
   send_obj_unreachable(skb);
   send_reset_indications(skb);
  }
 }

out:
 kfree_skb(skb);
 return NET_RX_DROP;
}
