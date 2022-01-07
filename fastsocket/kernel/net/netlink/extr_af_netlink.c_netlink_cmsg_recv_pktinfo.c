
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nl_pktinfo {int group; } ;
struct msghdr {int dummy; } ;
typedef int info ;
struct TYPE_2__ {int dst_group; } ;


 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NETLINK_PKTINFO ;
 int SOL_NETLINK ;
 int put_cmsg (struct msghdr*,int ,int ,int,struct nl_pktinfo*) ;

__attribute__((used)) static void netlink_cmsg_recv_pktinfo(struct msghdr *msg, struct sk_buff *skb)
{
 struct nl_pktinfo info;

 info.group = NETLINK_CB(skb).dst_group;
 put_cmsg(msg, SOL_NETLINK, NETLINK_PKTINFO, sizeof(info), &info);
}
