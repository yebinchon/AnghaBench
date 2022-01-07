
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct tnl_ptk_info {scalar_t__ proto; int key; int flags; } ;
struct sk_buff {TYPE_4__* dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct iphdr {int saddr; int daddr; } ;
struct ip_tunnel_net {int dummy; } ;
struct TYPE_5__ {scalar_t__ daddr; scalar_t__ ttl; } ;
struct TYPE_6__ {TYPE_1__ iph; } ;
struct ip_tunnel {int err_count; scalar_t__ err_time; TYPE_2__ parms; } ;
struct TYPE_8__ {int ifindex; } ;
struct TYPE_7__ {int type; int code; } ;


 int ETH_P_TEB ;

 int const ICMP_EXC_TTL ;




 scalar_t__ IPTUNNEL_ERR_TIMEO ;
 int PACKET_RCVD ;
 int PACKET_REJECT ;
 struct net* dev_net (TYPE_4__*) ;
 int gre_tap_net_id ;
 scalar_t__ htons (int ) ;
 TYPE_3__* icmp_hdr (struct sk_buff*) ;
 struct ip_tunnel* ip_tunnel_lookup (struct ip_tunnel_net*,int ,int ,int ,int ,int ) ;
 int ipgre_net_id ;
 scalar_t__ ipv4_is_multicast (scalar_t__) ;
 scalar_t__ jiffies ;
 struct ip_tunnel_net* net_generic (struct net*,int ) ;
 scalar_t__ time_before (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ipgre_err(struct sk_buff *skb, u32 info,
       const struct tnl_ptk_info *tpi)
{
 struct net *net = dev_net(skb->dev);
 struct ip_tunnel_net *itn;
 const struct iphdr *iph;
 const int type = icmp_hdr(skb)->type;
 const int code = icmp_hdr(skb)->code;
 struct ip_tunnel *t;

 switch (type) {
 default:
 case 131:
  return PACKET_RCVD;

 case 132:
  switch (code) {
  case 129:
  case 130:

   return PACKET_RCVD;
  default:




   break;
  }
  break;
 case 128:
  if (code != ICMP_EXC_TTL)
   return PACKET_RCVD;
  break;
 }

 if (tpi->proto == htons(ETH_P_TEB))
  itn = net_generic(net, gre_tap_net_id);
 else
  itn = net_generic(net, ipgre_net_id);

 iph = (const struct iphdr *)skb->data;
 t = ip_tunnel_lookup(itn, skb->dev->ifindex, tpi->flags,
        iph->daddr, iph->saddr, tpi->key);

 if (t == ((void*)0))
  return PACKET_REJECT;

 if (t->parms.iph.daddr == 0 ||
     ipv4_is_multicast(t->parms.iph.daddr))
  return PACKET_RCVD;

 if (t->parms.iph.ttl == 0 && type == 128)
  return PACKET_RCVD;

 if (time_before(jiffies, t->err_time + IPTUNNEL_ERR_TIMEO))
  t->err_count++;
 else
  t->err_count = 1;
 t->err_time = jiffies;
 return PACKET_RCVD;
}
