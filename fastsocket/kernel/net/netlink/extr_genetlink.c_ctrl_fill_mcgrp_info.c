
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct genl_multicast_group {int name; int id; TYPE_1__* family; } ;
struct TYPE_2__ {int id; int name; } ;


 int CTRL_ATTR_FAMILY_ID ;
 int CTRL_ATTR_FAMILY_NAME ;
 int CTRL_ATTR_MCAST_GROUPS ;
 int CTRL_ATTR_MCAST_GRP_ID ;
 int CTRL_ATTR_MCAST_GRP_NAME ;
 int EMSGSIZE ;
 int NLA_PUT_STRING (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U16 (struct sk_buff*,int ,int ) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int ) ;
 int genl_ctrl ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int) ;

__attribute__((used)) static int ctrl_fill_mcgrp_info(struct genl_multicast_group *grp, u32 pid,
    u32 seq, u32 flags, struct sk_buff *skb,
    u8 cmd)
{
 void *hdr;
 struct nlattr *nla_grps;
 struct nlattr *nest;

 hdr = genlmsg_put(skb, pid, seq, &genl_ctrl, flags, cmd);
 if (hdr == ((void*)0))
  return -1;

 NLA_PUT_STRING(skb, CTRL_ATTR_FAMILY_NAME, grp->family->name);
 NLA_PUT_U16(skb, CTRL_ATTR_FAMILY_ID, grp->family->id);

 nla_grps = nla_nest_start(skb, CTRL_ATTR_MCAST_GROUPS);
 if (nla_grps == ((void*)0))
  goto nla_put_failure;

 nest = nla_nest_start(skb, 1);
 if (nest == ((void*)0))
  goto nla_put_failure;

 NLA_PUT_U32(skb, CTRL_ATTR_MCAST_GRP_ID, grp->id);
 NLA_PUT_STRING(skb, CTRL_ATTR_MCAST_GRP_NAME,
         grp->name);

 nla_nest_end(skb, nest);
 nla_nest_end(skb, nla_grps);

 return genlmsg_end(skb, hdr);

nla_put_failure:
 genlmsg_cancel(skb, hdr);
 return -EMSGSIZE;
}
