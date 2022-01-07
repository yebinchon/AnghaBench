
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xt_match_param {struct ebt_ip_info* matchinfo; } ;
struct tcpudphdr {scalar_t__ tos; int saddr; int daddr; scalar_t__ protocol; int ihl; int src; int dst; int frag_off; } ;
struct sk_buff {int dummy; } ;
struct iphdr {scalar_t__ tos; int saddr; int daddr; scalar_t__ protocol; int ihl; int src; int dst; int frag_off; } ;
struct ebt_ip_info {int bitmask; scalar_t__ tos; int smsk; int saddr; int dmsk; int daddr; scalar_t__ protocol; scalar_t__* dport; scalar_t__* sport; } ;
typedef int _ports ;
typedef int _iph ;


 int EBT_IP_DEST ;
 int EBT_IP_DPORT ;
 int EBT_IP_PROTO ;
 int EBT_IP_SOURCE ;
 int EBT_IP_SPORT ;
 int EBT_IP_TOS ;
 scalar_t__ FWINV (int,int) ;
 int IP_OFFSET ;
 int ntohs (int ) ;
 struct tcpudphdr* skb_header_pointer (struct sk_buff const*,int,int,struct tcpudphdr*) ;

__attribute__((used)) static bool
ebt_ip_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct ebt_ip_info *info = par->matchinfo;
 const struct iphdr *ih;
 struct iphdr _iph;
 const struct tcpudphdr *pptr;
 struct tcpudphdr _ports;

 ih = skb_header_pointer(skb, 0, sizeof(_iph), &_iph);
 if (ih == ((void*)0))
  return 0;
 if (info->bitmask & EBT_IP_TOS &&
    FWINV(info->tos != ih->tos, EBT_IP_TOS))
  return 0;
 if (info->bitmask & EBT_IP_SOURCE &&
    FWINV((ih->saddr & info->smsk) !=
    info->saddr, EBT_IP_SOURCE))
  return 0;
 if ((info->bitmask & EBT_IP_DEST) &&
    FWINV((ih->daddr & info->dmsk) !=
    info->daddr, EBT_IP_DEST))
  return 0;
 if (info->bitmask & EBT_IP_PROTO) {
  if (FWINV(info->protocol != ih->protocol, EBT_IP_PROTO))
   return 0;
  if (!(info->bitmask & EBT_IP_DPORT) &&
      !(info->bitmask & EBT_IP_SPORT))
   return 1;
  if (ntohs(ih->frag_off) & IP_OFFSET)
   return 0;
  pptr = skb_header_pointer(skb, ih->ihl*4,
       sizeof(_ports), &_ports);
  if (pptr == ((void*)0))
   return 0;
  if (info->bitmask & EBT_IP_DPORT) {
   u32 dst = ntohs(pptr->dst);
   if (FWINV(dst < info->dport[0] ||
      dst > info->dport[1],
      EBT_IP_DPORT))
   return 0;
  }
  if (info->bitmask & EBT_IP_SPORT) {
   u32 src = ntohs(pptr->src);
   if (FWINV(src < info->sport[0] ||
      src > info->sport[1],
      EBT_IP_SPORT))
   return 0;
  }
 }
 return 1;
}
