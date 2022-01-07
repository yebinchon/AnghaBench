
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct netlbl_audit {int sessionid; int loginuid; int secid; } ;
struct TYPE_2__ {int sessionid; int loginuid; int sid; } ;


 TYPE_1__ NETLINK_CB (struct sk_buff*) ;

__attribute__((used)) static inline void netlbl_netlink_auditinfo(struct sk_buff *skb,
         struct netlbl_audit *audit_info)
{
 audit_info->secid = NETLINK_CB(skb).sid;
 audit_info->loginuid = NETLINK_CB(skb).loginuid;
 audit_info->sessionid = NETLINK_CB(skb).sessionid;
}
