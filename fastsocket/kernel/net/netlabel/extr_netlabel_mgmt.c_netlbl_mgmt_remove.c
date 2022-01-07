
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlbl_audit {int dummy; } ;
struct genl_info {int * attrs; } ;


 int EINVAL ;
 size_t NLBL_MGMT_A_DOMAIN ;
 int netlbl_domhsh_remove (char*,struct netlbl_audit*) ;
 int netlbl_netlink_auditinfo (struct sk_buff*,struct netlbl_audit*) ;
 char* nla_data (int ) ;

__attribute__((used)) static int netlbl_mgmt_remove(struct sk_buff *skb, struct genl_info *info)
{
 char *domain;
 struct netlbl_audit audit_info;

 if (!info->attrs[NLBL_MGMT_A_DOMAIN])
  return -EINVAL;

 netlbl_netlink_auditinfo(skb, &audit_info);

 domain = nla_data(info->attrs[NLBL_MGMT_A_DOMAIN]);
 return netlbl_domhsh_remove(domain, &audit_info);
}
