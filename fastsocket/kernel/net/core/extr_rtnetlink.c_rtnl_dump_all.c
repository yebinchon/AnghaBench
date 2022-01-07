
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct netlink_callback {int family; int * args; TYPE_1__* nlh; } ;
struct TYPE_4__ {scalar_t__ (* dumpit ) (struct sk_buff*,struct netlink_callback*) ;} ;
struct TYPE_3__ {int nlmsg_type; } ;


 int PF_PACKET ;
 int RTM_BASE ;
 int RTNL_FAMILY_MAX ;
 int memset (int *,int ,int) ;
 TYPE_2__** rtnl_msg_handlers ;
 scalar_t__ stub1 (struct sk_buff*,struct netlink_callback*) ;

__attribute__((used)) static int rtnl_dump_all(struct sk_buff *skb, struct netlink_callback *cb)
{
 int idx;
 int s_idx = cb->family;

 if (s_idx == 0)
  s_idx = 1;
 for (idx = 1; idx <= RTNL_FAMILY_MAX; idx++) {
  int type = cb->nlh->nlmsg_type-RTM_BASE;
  if (idx < s_idx || idx == PF_PACKET)
   continue;
  if (rtnl_msg_handlers[idx] == ((void*)0) ||
      rtnl_msg_handlers[idx][type].dumpit == ((void*)0))
   continue;
  if (idx > s_idx)
   memset(&cb->args[0], 0, sizeof(cb->args));
  if (rtnl_msg_handlers[idx][type].dumpit(skb, cb))
   break;
 }
 cb->family = idx;

 return skb->len;
}
