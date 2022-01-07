
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct prefixmsg {int prefix_flags; scalar_t__ prefix_pad3; int prefix_type; int prefix_len; int prefix_ifindex; scalar_t__ prefix_pad2; scalar_t__ prefix_pad1; int prefix_family; } ;
struct prefix_cacheinfo {void* valid_time; void* preferred_time; } ;
struct prefix_info {int valid; int prefered; struct prefix_cacheinfo prefix; scalar_t__ autoconf; scalar_t__ onlink; int type; int prefix_len; } ;
struct nlmsghdr {int dummy; } ;
struct inet6_dev {TYPE_1__* dev; } ;
typedef int ci ;
struct TYPE_2__ {int ifindex; } ;


 int AF_INET6 ;
 int EMSGSIZE ;
 int IF_PREFIX_AUTOCONF ;
 int IF_PREFIX_ONLINK ;
 int NLA_PUT (struct sk_buff*,int ,int,struct prefix_cacheinfo*) ;
 int PREFIX_ADDRESS ;
 int PREFIX_CACHEINFO ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct prefixmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;
 void* ntohl (int ) ;

__attribute__((used)) static int inet6_fill_prefix(struct sk_buff *skb, struct inet6_dev *idev,
        struct prefix_info *pinfo, u32 pid, u32 seq,
        int event, unsigned int flags)
{
 struct prefixmsg *pmsg;
 struct nlmsghdr *nlh;
 struct prefix_cacheinfo ci;

 nlh = nlmsg_put(skb, pid, seq, event, sizeof(*pmsg), flags);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 pmsg = nlmsg_data(nlh);
 pmsg->prefix_family = AF_INET6;
 pmsg->prefix_pad1 = 0;
 pmsg->prefix_pad2 = 0;
 pmsg->prefix_ifindex = idev->dev->ifindex;
 pmsg->prefix_len = pinfo->prefix_len;
 pmsg->prefix_type = pinfo->type;
 pmsg->prefix_pad3 = 0;
 pmsg->prefix_flags = 0;
 if (pinfo->onlink)
  pmsg->prefix_flags |= IF_PREFIX_ONLINK;
 if (pinfo->autoconf)
  pmsg->prefix_flags |= IF_PREFIX_AUTOCONF;

 NLA_PUT(skb, PREFIX_ADDRESS, sizeof(pinfo->prefix), &pinfo->prefix);

 ci.preferred_time = ntohl(pinfo->prefered);
 ci.valid_time = ntohl(pinfo->valid);
 NLA_PUT(skb, PREFIX_CACHEINFO, sizeof(ci), &ci);

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
