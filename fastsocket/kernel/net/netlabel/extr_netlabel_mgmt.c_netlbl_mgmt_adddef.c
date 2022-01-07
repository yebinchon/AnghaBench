
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netlbl_audit {int dummy; } ;
struct genl_info {int ** attrs; } ;


 int EINVAL ;
 size_t NLBL_MGMT_A_IPV4ADDR ;
 size_t NLBL_MGMT_A_IPV4MASK ;
 size_t NLBL_MGMT_A_IPV6ADDR ;
 size_t NLBL_MGMT_A_IPV6MASK ;
 size_t NLBL_MGMT_A_PROTOCOL ;
 int netlbl_mgmt_add_common (struct genl_info*,struct netlbl_audit*) ;
 int netlbl_netlink_auditinfo (struct sk_buff*,struct netlbl_audit*) ;

__attribute__((used)) static int netlbl_mgmt_adddef(struct sk_buff *skb, struct genl_info *info)
{
 struct netlbl_audit audit_info;

 if ((!info->attrs[NLBL_MGMT_A_PROTOCOL]) ||
     (info->attrs[NLBL_MGMT_A_IPV4ADDR] &&
      info->attrs[NLBL_MGMT_A_IPV6ADDR]) ||
     (info->attrs[NLBL_MGMT_A_IPV4MASK] &&
      info->attrs[NLBL_MGMT_A_IPV6MASK]) ||
     ((info->attrs[NLBL_MGMT_A_IPV4ADDR] != ((void*)0)) ^
      (info->attrs[NLBL_MGMT_A_IPV4MASK] != ((void*)0))) ||
     ((info->attrs[NLBL_MGMT_A_IPV6ADDR] != ((void*)0)) ^
      (info->attrs[NLBL_MGMT_A_IPV6MASK] != ((void*)0))))
  return -EINVAL;

 netlbl_netlink_auditinfo(skb, &audit_info);

 return netlbl_mgmt_add_common(info, &audit_info);
}
