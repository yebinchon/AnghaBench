
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct netlbl_audit {int dummy; } ;
struct genl_info {scalar_t__* attrs; } ;


 int EINVAL ;
 size_t NLBL_UNLABEL_A_ACPTFLG ;
 int netlbl_netlink_auditinfo (struct sk_buff*,struct netlbl_audit*) ;
 int netlbl_unlabel_acceptflg_set (int,struct netlbl_audit*) ;
 int nla_get_u8 (scalar_t__) ;

__attribute__((used)) static int netlbl_unlabel_accept(struct sk_buff *skb, struct genl_info *info)
{
 u8 value;
 struct netlbl_audit audit_info;

 if (info->attrs[NLBL_UNLABEL_A_ACPTFLG]) {
  value = nla_get_u8(info->attrs[NLBL_UNLABEL_A_ACPTFLG]);
  if (value == 1 || value == 0) {
   netlbl_netlink_auditinfo(skb, &audit_info);
   netlbl_unlabel_acceptflg_set(value, &audit_info);
   return 0;
  }
 }

 return -EINVAL;
}
