
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct ebt_entry* entryinfo; struct ebt_vlan_info* matchinfo; } ;
struct ebt_vlan_info {int bitmask; int invflags; unsigned short id; unsigned short prio; scalar_t__ encap; } ;
struct ebt_entry {scalar_t__ ethproto; } ;


 int DEBUG_MSG (char*,unsigned short,...) ;
 int EBT_VLAN_ENCAP ;
 int EBT_VLAN_ID ;
 int EBT_VLAN_MASK ;
 int EBT_VLAN_PRIO ;
 int ETH_P_8021Q ;
 unsigned short ETH_ZLEN ;
 scalar_t__ GET_BITMASK (int) ;
 unsigned short VLAN_GROUP_ARRAY_LEN ;
 scalar_t__ htons (int ) ;
 unsigned short ntohs (scalar_t__) ;

__attribute__((used)) static bool ebt_vlan_mt_check(const struct xt_mtchk_param *par)
{
 struct ebt_vlan_info *info = par->matchinfo;
 const struct ebt_entry *e = par->entryinfo;


 if (e->ethproto != htons(ETH_P_8021Q)) {
  DEBUG_MSG
      ("passed entry proto %2.4X is not 802.1Q (8100)\n",
       (unsigned short) ntohs(e->ethproto));
  return 0;
 }



 if (info->bitmask & ~EBT_VLAN_MASK) {
  DEBUG_MSG("bitmask %2X is out of mask (%2X)\n",
     info->bitmask, EBT_VLAN_MASK);
  return 0;
 }


 if (info->invflags & ~EBT_VLAN_MASK) {
  DEBUG_MSG("inversion flags %2X is out of mask (%2X)\n",
     info->invflags, EBT_VLAN_MASK);
  return 0;
 }







 if (GET_BITMASK(EBT_VLAN_ID)) {
  if (!!info->id) {
   if (info->id > VLAN_GROUP_ARRAY_LEN) {
    DEBUG_MSG
        ("id %d is out of range (1-4096)\n",
         info->id);
    return 0;
   }




   info->bitmask &= ~EBT_VLAN_PRIO;
  }

 }

 if (GET_BITMASK(EBT_VLAN_PRIO)) {
  if ((unsigned char) info->prio > 7) {
   DEBUG_MSG("prio %d is out of range (0-7)\n",
        info->prio);
   return 0;
  }
 }



 if (GET_BITMASK(EBT_VLAN_ENCAP)) {
  if ((unsigned short) ntohs(info->encap) < ETH_ZLEN) {
   DEBUG_MSG
       ("encap frame length %d is less than minimal\n",
        ntohs(info->encap));
   return 0;
  }
 }

 return 1;
}
