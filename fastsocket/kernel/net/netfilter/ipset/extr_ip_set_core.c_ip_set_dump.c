
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_dump_control {int done; int dump; } ;


 int IPSET_ERR_PROTOCOL ;
 int ip_set_dump_done ;
 int ip_set_dump_start ;
 int netlink_dump_start (struct sock*,struct sk_buff*,struct nlmsghdr const*,struct netlink_dump_control*) ;
 int protocol_failed (struct nlattr const* const*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int
ip_set_dump(struct sock *ctnl, struct sk_buff *skb,
     const struct nlmsghdr *nlh,
     const struct nlattr * const attr[])
{
 if (unlikely(protocol_failed(attr)))
  return -IPSET_ERR_PROTOCOL;

 {
  struct netlink_dump_control c = {
   .dump = ip_set_dump_start,
   .done = ip_set_dump_done,
  };
  return netlink_dump_start(ctnl, skb, nlh, &c);
 }
}
