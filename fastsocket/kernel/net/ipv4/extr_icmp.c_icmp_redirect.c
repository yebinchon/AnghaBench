
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; int dev; scalar_t__ data; } ;
struct iphdr {scalar_t__ protocol; int ihl; int saddr; int daddr; } ;
struct TYPE_4__ {int gateway; } ;
struct TYPE_6__ {int code; TYPE_1__ un; } ;
struct TYPE_5__ {int saddr; } ;


 int ICMP_INC_STATS_BH (int ,int ) ;
 int ICMP_MIB_INERRORS ;




 scalar_t__ IPPROTO_ICMP ;
 int dev_net (int ) ;
 TYPE_3__* icmp_hdr (struct sk_buff*) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 int ip_rt_redirect (int ,int ,int ,int ,int ) ;
 int ping_err (struct sk_buff*,int ) ;
 scalar_t__ pskb_may_pull (struct sk_buff*,int) ;

__attribute__((used)) static void icmp_redirect(struct sk_buff *skb)
{
 struct iphdr *iph;

 if (skb->len < sizeof(struct iphdr))
  goto out_err;




 if (!pskb_may_pull(skb, sizeof(struct iphdr)))
  goto out;

 iph = (struct iphdr *)skb->data;

 switch (icmp_hdr(skb)->code & 7) {
 case 129:
 case 128:



 case 131:
 case 130:
  ip_rt_redirect(ip_hdr(skb)->saddr, iph->daddr,
          icmp_hdr(skb)->un.gateway,
          iph->saddr, skb->dev);
  break;
 }



 if (iph->protocol == IPPROTO_ICMP &&
     iph->ihl >= 5 &&
     pskb_may_pull(skb, (iph->ihl<<2)+8)) {
  ping_err(skb, icmp_hdr(skb)->un.gateway);
 }

out:
 return;
out_err:
 ICMP_INC_STATS_BH(dev_net(skb->dev), ICMP_MIB_INERRORS);
 goto out;
}
