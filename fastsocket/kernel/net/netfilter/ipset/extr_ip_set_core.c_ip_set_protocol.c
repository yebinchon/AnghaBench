
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t IPSET_ATTR_PROTOCOL ;
 int IPSET_CMD_PROTOCOL ;
 int IPSET_ERR_PROTOCOL ;
 int IPSET_PROTOCOL ;
 int MSG_DONTWAIT ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLA_PUT_U8 (struct sk_buff*,size_t,int ) ;
 int NLMSG_DEFAULT_SIZE ;
 int kfree_skb (struct sk_buff*) ;
 int netlink_unicast (struct sock*,struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 struct nlmsghdr* start_msg (struct sk_buff*,int ,int ,int ,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
ip_set_protocol(struct sock *ctnl, struct sk_buff *skb,
  const struct nlmsghdr *nlh,
  const struct nlattr * const attr[])
{
 struct sk_buff *skb2;
 struct nlmsghdr *nlh2;
 int ret = 0;

 if (unlikely(attr[IPSET_ATTR_PROTOCOL] == ((void*)0)))
  return -IPSET_ERR_PROTOCOL;

 skb2 = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (skb2 == ((void*)0))
  return -ENOMEM;

 nlh2 = start_msg(skb2, NETLINK_CB(skb).pid, nlh->nlmsg_seq, 0,
    IPSET_CMD_PROTOCOL);
 if (!nlh2)
  goto nlmsg_failure;
 NLA_PUT_U8(skb2, IPSET_ATTR_PROTOCOL, IPSET_PROTOCOL);
 nlmsg_end(skb2, nlh2);

 ret = netlink_unicast(ctnl, skb2, NETLINK_CB(skb).pid, MSG_DONTWAIT);
 if (ret < 0)
  return ret;

 return 0;

nla_put_failure:
 nlmsg_cancel(skb2, nlh2);
nlmsg_failure:
 kfree_skb(skb2);
 return -EMSGSIZE;
}
