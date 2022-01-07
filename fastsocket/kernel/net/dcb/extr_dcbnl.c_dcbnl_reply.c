
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct dcbmsg {scalar_t__ dcb_pad; int cmd; int dcb_family; } ;


 int AF_UNSPEC ;
 int EINVAL ;
 int GFP_KERNEL ;
 struct dcbmsg* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_DEFAULT_SIZE ;
 struct nlmsghdr* NLMSG_NEW (struct sk_buff*,int ,int ,int ,int,int ) ;
 int init_net ;
 int kfree_skb (struct sk_buff*) ;
 int nla_put_u8 (struct sk_buff*,int ,int ) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int rtnl_unicast (struct sk_buff*,int *,int ) ;

__attribute__((used)) static int dcbnl_reply(u8 value, u8 event, u8 cmd, u8 attr, u32 pid,
                       u32 seq, u16 flags)
{
 struct sk_buff *dcbnl_skb;
 struct dcbmsg *dcb;
 struct nlmsghdr *nlh;
 int ret = -EINVAL;

 dcbnl_skb = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!dcbnl_skb)
  return ret;

 nlh = NLMSG_NEW(dcbnl_skb, pid, seq, event, sizeof(*dcb), flags);

 dcb = NLMSG_DATA(nlh);
 dcb->dcb_family = AF_UNSPEC;
 dcb->cmd = cmd;
 dcb->dcb_pad = 0;

 ret = nla_put_u8(dcbnl_skb, attr, value);
 if (ret)
  goto err;


 nlmsg_end(dcbnl_skb, nlh);
 ret = rtnl_unicast(dcbnl_skb, &init_net, pid);
 if (ret)
  return -EINVAL;

 return 0;
nlmsg_failure:
err:
 kfree_skb(dcbnl_skb);
 return ret;
}
