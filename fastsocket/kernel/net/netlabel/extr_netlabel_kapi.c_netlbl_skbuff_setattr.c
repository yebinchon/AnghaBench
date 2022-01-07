
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct netlbl_lsm_secattr {int domain; } ;
struct TYPE_2__ {int cipsov4; } ;
struct netlbl_domaddr4_map {TYPE_1__ type_def; int type; } ;
struct iphdr {int daddr; } ;




 int ENOENT ;
 int EPROTONOSUPPORT ;


 int cipso_v4_skbuff_delattr (struct sk_buff*) ;
 int cipso_v4_skbuff_setattr (struct sk_buff*,int ,struct netlbl_lsm_secattr const*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct netlbl_domaddr4_map* netlbl_domhsh_getentry_af4 (int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int netlbl_skbuff_setattr(struct sk_buff *skb,
     u16 family,
     const struct netlbl_lsm_secattr *secattr)
{
 int ret_val;
 struct iphdr *hdr4;
 struct netlbl_domaddr4_map *af4_entry;

 rcu_read_lock();
 switch (family) {
 case 131:
  hdr4 = ip_hdr(skb);
  af4_entry = netlbl_domhsh_getentry_af4(secattr->domain,
             hdr4->daddr);
  if (af4_entry == ((void*)0)) {
   ret_val = -ENOENT;
   goto skbuff_setattr_return;
  }
  switch (af4_entry->type) {
  case 129:
   ret_val = cipso_v4_skbuff_setattr(skb,
         af4_entry->type_def.cipsov4,
         secattr);
   break;
  case 128:


   ret_val = cipso_v4_skbuff_delattr(skb);
   break;
  default:
   ret_val = -ENOENT;
  }
  break;







 default:
  ret_val = -EPROTONOSUPPORT;
 }

skbuff_setattr_return:
 rcu_read_unlock();
 return ret_val;
}
