
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int ethertype; } ;
struct hippi_hdr {TYPE_1__ snap; } ;
typedef int __be16 ;


 int HIPPI_HLEN ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__be16 hippi_type_trans(struct sk_buff *skb, struct net_device *dev)
{
 struct hippi_hdr *hip;





 skb->dev = dev;
 skb_reset_mac_header(skb);
 hip = (struct hippi_hdr *)skb_mac_header(skb);
 skb_pull(skb, HIPPI_HLEN);





 return hip->snap.ethertype;
}
