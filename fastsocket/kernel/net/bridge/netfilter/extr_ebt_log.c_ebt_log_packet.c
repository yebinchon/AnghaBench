
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int8_t ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {unsigned int logflags; scalar_t__ level; } ;
struct TYPE_5__ {TYPE_1__ log; } ;
struct nf_loginfo {scalar_t__ type; TYPE_2__ u; } ;
struct net_device {char* name; } ;
struct ipv6hdr {int ihl; scalar_t__ ar_hrd; scalar_t__ ar_pro; scalar_t__ ar_op; scalar_t__ ar_hln; int ar_pln; int ip_dst; int mac_dst; int ip_src; int mac_src; int nexthdr; int priority; int daddr; int saddr; int protocol; int tos; } ;
struct iphdr {int ihl; scalar_t__ ar_hrd; scalar_t__ ar_pro; scalar_t__ ar_op; scalar_t__ ar_hln; int ar_pln; int ip_dst; int mac_dst; int ip_src; int mac_src; int nexthdr; int priority; int daddr; int saddr; int protocol; int tos; } ;
struct arppayload {int ihl; scalar_t__ ar_hrd; scalar_t__ ar_pro; scalar_t__ ar_op; scalar_t__ ar_hln; int ar_pln; int ip_dst; int mac_dst; int ip_src; int mac_src; int nexthdr; int priority; int daddr; int saddr; int protocol; int tos; } ;
struct arphdr {int ihl; scalar_t__ ar_hrd; scalar_t__ ar_pro; scalar_t__ ar_op; scalar_t__ ar_hln; int ar_pln; int ip_dst; int mac_dst; int ip_src; int mac_src; int nexthdr; int priority; int daddr; int saddr; int protocol; int tos; } ;
typedef int _iph ;
typedef int _arpp ;
typedef int _arph ;
typedef int __be32 ;
struct TYPE_6__ {scalar_t__ h_proto; int h_dest; int h_source; } ;


 unsigned int EBT_LOG_ARP ;
 unsigned int EBT_LOG_IP ;
 unsigned int EBT_LOG_IP6 ;
 scalar_t__ ETH_ALEN ;
 int ETH_P_ARP ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int ETH_P_RARP ;
 unsigned int NF_LOG_MASK ;
 scalar_t__ NF_LOG_TYPE_LOG ;
 int ebt_log_lock ;
 TYPE_3__* eth_hdr (struct sk_buff const*) ;
 scalar_t__ htons (int) ;
 int ipv6_skip_exthdr (struct sk_buff const*,int,int *) ;
 int ntohs (scalar_t__) ;
 int print_ports (struct sk_buff const*,int ,int) ;
 int printk (char*,...) ;
 struct ipv6hdr* skb_header_pointer (struct sk_buff const*,int,int,struct ipv6hdr*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
ebt_log_packet(u_int8_t pf, unsigned int hooknum,
   const struct sk_buff *skb, const struct net_device *in,
   const struct net_device *out, const struct nf_loginfo *loginfo,
   const char *prefix)
{
 unsigned int bitmask;

 spin_lock_bh(&ebt_log_lock);
 printk("<%c>%s IN=%s OUT=%s MAC source = %pM MAC dest = %pM proto = 0x%04x",
        '0' + loginfo->u.log.level, prefix,
        in ? in->name : "", out ? out->name : "",
        eth_hdr(skb)->h_source, eth_hdr(skb)->h_dest,
        ntohs(eth_hdr(skb)->h_proto));

 if (loginfo->type == NF_LOG_TYPE_LOG)
  bitmask = loginfo->u.log.logflags;
 else
  bitmask = NF_LOG_MASK;

 if ((bitmask & EBT_LOG_IP) && eth_hdr(skb)->h_proto ==
    htons(ETH_P_IP)){
  const struct iphdr *ih;
  struct iphdr _iph;

  ih = skb_header_pointer(skb, 0, sizeof(_iph), &_iph);
  if (ih == ((void*)0)) {
   printk(" INCOMPLETE IP header");
   goto out;
  }
  printk(" IP SRC=%pI4 IP DST=%pI4, IP tos=0x%02X, IP proto=%d",
         &ih->saddr, &ih->daddr, ih->tos, ih->protocol);
  print_ports(skb, ih->protocol, ih->ihl*4);
  goto out;
 }
 if ((bitmask & EBT_LOG_ARP) &&
     ((eth_hdr(skb)->h_proto == htons(ETH_P_ARP)) ||
      (eth_hdr(skb)->h_proto == htons(ETH_P_RARP)))) {
  const struct arphdr *ah;
  struct arphdr _arph;

  ah = skb_header_pointer(skb, 0, sizeof(_arph), &_arph);
  if (ah == ((void*)0)) {
   printk(" INCOMPLETE ARP header");
   goto out;
  }
  printk(" ARP HTYPE=%d, PTYPE=0x%04x, OPCODE=%d",
         ntohs(ah->ar_hrd), ntohs(ah->ar_pro),
         ntohs(ah->ar_op));



  if (ah->ar_hrd == htons(1) &&
      ah->ar_hln == ETH_ALEN &&
      ah->ar_pln == sizeof(__be32)) {
   const struct arppayload *ap;
   struct arppayload _arpp;

   ap = skb_header_pointer(skb, sizeof(_arph),
      sizeof(_arpp), &_arpp);
   if (ap == ((void*)0)) {
    printk(" INCOMPLETE ARP payload");
    goto out;
   }
   printk(" ARP MAC SRC=%pM ARP IP SRC=%pI4 ARP MAC DST=%pM ARP IP DST=%pI4",
     ap->mac_src, ap->ip_src, ap->mac_dst, ap->ip_dst);
  }
 }
out:
 printk("\n");
 spin_unlock_bh(&ebt_log_lock);

}
