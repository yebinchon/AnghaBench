
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ebt_entry* entryinfo; struct ebt_arp_info* matchinfo; } ;
struct ebt_entry {scalar_t__ ethproto; int invflags; } ;
struct ebt_arp_info {int bitmask; int invflags; } ;


 int EBT_ARP_MASK ;
 int EBT_IPROTO ;
 int ETH_P_ARP ;
 int ETH_P_RARP ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static bool ebt_arp_mt_check(const struct xt_mtchk_param *par)
{
 const struct ebt_arp_info *info = par->matchinfo;
 const struct ebt_entry *e = par->entryinfo;

 if ((e->ethproto != htons(ETH_P_ARP) &&
    e->ethproto != htons(ETH_P_RARP)) ||
    e->invflags & EBT_IPROTO)
  return 0;
 if (info->bitmask & ~EBT_ARP_MASK || info->invflags & ~EBT_ARP_MASK)
  return 0;
 return 1;
}
