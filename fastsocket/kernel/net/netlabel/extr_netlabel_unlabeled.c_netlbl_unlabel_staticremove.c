
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct netlbl_audit {int dummy; } ;
struct genl_info {int * attrs; } ;


 int EINVAL ;
 size_t NLBL_UNLABEL_A_IFACE ;
 size_t NLBL_UNLABEL_A_IPV4ADDR ;
 size_t NLBL_UNLABEL_A_IPV4MASK ;
 size_t NLBL_UNLABEL_A_IPV6ADDR ;
 size_t NLBL_UNLABEL_A_IPV6MASK ;
 int init_net ;
 int netlbl_netlink_auditinfo (struct sk_buff*,struct netlbl_audit*) ;
 int netlbl_unlabel_addrinfo_get (struct genl_info*,void**,void**,int *) ;
 int netlbl_unlhsh_remove (int *,char*,void*,void*,int ,struct netlbl_audit*) ;
 char* nla_data (int ) ;

__attribute__((used)) static int netlbl_unlabel_staticremove(struct sk_buff *skb,
           struct genl_info *info)
{
 int ret_val;
 char *dev_name;
 void *addr;
 void *mask;
 u32 addr_len;
 struct netlbl_audit audit_info;



 if (!info->attrs[NLBL_UNLABEL_A_IFACE] ||
     !((!info->attrs[NLBL_UNLABEL_A_IPV4ADDR] ||
        !info->attrs[NLBL_UNLABEL_A_IPV4MASK]) ^
       (!info->attrs[NLBL_UNLABEL_A_IPV6ADDR] ||
        !info->attrs[NLBL_UNLABEL_A_IPV6MASK])))
  return -EINVAL;

 netlbl_netlink_auditinfo(skb, &audit_info);

 ret_val = netlbl_unlabel_addrinfo_get(info, &addr, &mask, &addr_len);
 if (ret_val != 0)
  return ret_val;
 dev_name = nla_data(info->attrs[NLBL_UNLABEL_A_IFACE]);

 return netlbl_unlhsh_remove(&init_net,
        dev_name, addr, mask, addr_len,
        &audit_info);
}
