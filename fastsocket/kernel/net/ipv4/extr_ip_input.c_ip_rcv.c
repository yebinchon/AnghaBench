
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ pkt_type; int len; } ;
struct packet_type {int dummy; } ;
struct net_device {int dummy; } ;
struct iphdr {int ihl; int version; int tot_len; } ;
struct inet_skb_parm {int dummy; } ;


 int GFP_ATOMIC ;
 int IPCB (struct sk_buff*) ;
 int IPSTATS_MIB_IN ;
 int IPSTATS_MIB_INDISCARDS ;
 int IPSTATS_MIB_INHDRERRORS ;
 int IPSTATS_MIB_INTRUNCATEDPKTS ;
 int IP_INC_STATS_BH (int ,int ) ;
 int IP_UPD_PO_STATS_BH (int ,int ,int) ;
 int NET_RX_DROP ;
 int NF_HOOK (int ,int ,struct sk_buff*,struct net_device*,int *,int ) ;
 int NF_INET_PRE_ROUTING ;
 scalar_t__ PACKET_OTHERHOST ;
 int PF_INET ;
 int dev_net (struct net_device*) ;
 int ip_fast_csum (int *,int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_rcv_finish ;
 int kfree_skb (struct sk_buff*) ;
 int memset (int ,int ,int) ;
 int ntohs (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ pskb_trim_rcsum (struct sk_buff*,int) ;
 int skb_orphan (struct sk_buff*) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 scalar_t__ unlikely (int ) ;

int ip_rcv(struct sk_buff *skb, struct net_device *dev, struct packet_type *pt, struct net_device *orig_dev)
{
 struct iphdr *iph;
 u32 len;




 if (skb->pkt_type == PACKET_OTHERHOST)
  goto drop;


 IP_UPD_PO_STATS_BH(dev_net(dev), IPSTATS_MIB_IN, skb->len);

 if ((skb = skb_share_check(skb, GFP_ATOMIC)) == ((void*)0)) {
  IP_INC_STATS_BH(dev_net(dev), IPSTATS_MIB_INDISCARDS);
  goto out;
 }

 if (!pskb_may_pull(skb, sizeof(struct iphdr)))
  goto inhdr_error;

 iph = ip_hdr(skb);
 if (iph->ihl < 5 || iph->version != 4)
  goto inhdr_error;

 if (!pskb_may_pull(skb, iph->ihl*4))
  goto inhdr_error;

 iph = ip_hdr(skb);

 if (unlikely(ip_fast_csum((u8 *)iph, iph->ihl)))
  goto inhdr_error;

 len = ntohs(iph->tot_len);
 if (skb->len < len) {
  IP_INC_STATS_BH(dev_net(dev), IPSTATS_MIB_INTRUNCATEDPKTS);
  goto drop;
 } else if (len < (iph->ihl*4))
  goto inhdr_error;





 if (pskb_trim_rcsum(skb, len)) {
  IP_INC_STATS_BH(dev_net(dev), IPSTATS_MIB_INDISCARDS);
  goto drop;
 }


 memset(IPCB(skb), 0, sizeof(struct inet_skb_parm));


 skb_orphan(skb);

 return NF_HOOK(PF_INET, NF_INET_PRE_ROUTING, skb, dev, ((void*)0),
         ip_rcv_finish);

inhdr_error:
 IP_INC_STATS_BH(dev_net(dev), IPSTATS_MIB_INHDRERRORS);
drop:
 kfree_skb(skb);
out:
 return NET_RX_DROP;
}
