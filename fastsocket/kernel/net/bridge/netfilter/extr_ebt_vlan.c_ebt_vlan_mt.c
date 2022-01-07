
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match_param {struct ebt_vlan_info* matchinfo; } ;
struct vlan_hdr {unsigned char h_vlan_encapsulated_proto; int h_vlan_TCI; } ;
struct sk_buff {int dummy; } ;
struct ebt_vlan_info {int dummy; } ;
typedef int _frame ;
typedef unsigned char __be16 ;


 int EBT_VLAN_ENCAP ;
 int EBT_VLAN_ID ;
 int EBT_VLAN_PRIO ;
 int EXIT_ON_MISMATCH (unsigned char,int ) ;
 scalar_t__ GET_BITMASK (int ) ;
 unsigned short VLAN_VID_MASK ;
 unsigned short ntohs (int ) ;
 struct vlan_hdr* skb_header_pointer (struct sk_buff const*,int ,int,struct vlan_hdr*) ;

__attribute__((used)) static bool
ebt_vlan_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct ebt_vlan_info *info = par->matchinfo;
 const struct vlan_hdr *fp;
 struct vlan_hdr _frame;

 unsigned short TCI;
 unsigned short id;
 unsigned char prio;

 __be16 encap;

 fp = skb_header_pointer(skb, 0, sizeof(_frame), &_frame);
 if (fp == ((void*)0))
  return 0;
 TCI = ntohs(fp->h_vlan_TCI);
 id = TCI & VLAN_VID_MASK;
 prio = (TCI >> 13) & 0x7;
 encap = fp->h_vlan_encapsulated_proto;


 if (GET_BITMASK(EBT_VLAN_ID))
  EXIT_ON_MISMATCH(id, EBT_VLAN_ID);


 if (GET_BITMASK(EBT_VLAN_PRIO))
  EXIT_ON_MISMATCH(prio, EBT_VLAN_PRIO);


 if (GET_BITMASK(EBT_VLAN_ENCAP))
  EXIT_ON_MISMATCH(encap, EBT_VLAN_ENCAP);

 return 1;
}
