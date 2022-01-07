
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ebt_ip6_info* matchinfo; struct ebt_entry* entryinfo; } ;
struct ebt_ip6_info {int bitmask; int invflags; scalar_t__ protocol; scalar_t__* dport; scalar_t__* sport; } ;
struct ebt_entry {scalar_t__ ethproto; int invflags; } ;


 int EBT_IP6_DPORT ;
 int EBT_IP6_MASK ;
 int EBT_IP6_PROTO ;
 int EBT_IP6_SPORT ;
 int EBT_IPROTO ;
 int ETH_P_IPV6 ;
 scalar_t__ IPPROTO_DCCP ;
 scalar_t__ IPPROTO_SCTP ;
 scalar_t__ IPPROTO_TCP ;
 scalar_t__ IPPROTO_UDP ;
 scalar_t__ IPPROTO_UDPLITE ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static bool ebt_ip6_mt_check(const struct xt_mtchk_param *par)
{
 const struct ebt_entry *e = par->entryinfo;
 struct ebt_ip6_info *info = par->matchinfo;

 if (e->ethproto != htons(ETH_P_IPV6) || e->invflags & EBT_IPROTO)
  return 0;
 if (info->bitmask & ~EBT_IP6_MASK || info->invflags & ~EBT_IP6_MASK)
  return 0;
 if (info->bitmask & (EBT_IP6_DPORT | EBT_IP6_SPORT)) {
  if (info->invflags & EBT_IP6_PROTO)
   return 0;
  if (info->protocol != IPPROTO_TCP &&
      info->protocol != IPPROTO_UDP &&
      info->protocol != IPPROTO_UDPLITE &&
      info->protocol != IPPROTO_SCTP &&
      info->protocol != IPPROTO_DCCP)
   return 0;
 }
 if (info->bitmask & EBT_IP6_DPORT && info->dport[0] > info->dport[1])
  return 0;
 if (info->bitmask & EBT_IP6_SPORT && info->sport[0] > info->sport[1])
  return 0;
 return 1;
}
