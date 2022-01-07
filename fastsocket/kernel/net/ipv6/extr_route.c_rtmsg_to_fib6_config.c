
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct in6_rtmsg {int rtmsg_gateway; int rtmsg_src; int rtmsg_dst; int rtmsg_flags; int rtmsg_src_len; int rtmsg_dst_len; int rtmsg_info; int rtmsg_metric; int rtmsg_ifindex; } ;
struct TYPE_2__ {struct net* nl_net; } ;
struct fib6_config {int fc_gateway; int fc_src; int fc_dst; TYPE_1__ fc_nlinfo; int fc_flags; int fc_src_len; int fc_dst_len; int fc_expires; int fc_metric; int fc_ifindex; int fc_table; } ;


 int RT6_TABLE_MAIN ;
 int ipv6_addr_copy (int *,int *) ;
 int memset (struct fib6_config*,int ,int) ;

__attribute__((used)) static void rtmsg_to_fib6_config(struct net *net,
     struct in6_rtmsg *rtmsg,
     struct fib6_config *cfg)
{
 memset(cfg, 0, sizeof(*cfg));

 cfg->fc_table = RT6_TABLE_MAIN;
 cfg->fc_ifindex = rtmsg->rtmsg_ifindex;
 cfg->fc_metric = rtmsg->rtmsg_metric;
 cfg->fc_expires = rtmsg->rtmsg_info;
 cfg->fc_dst_len = rtmsg->rtmsg_dst_len;
 cfg->fc_src_len = rtmsg->rtmsg_src_len;
 cfg->fc_flags = rtmsg->rtmsg_flags;

 cfg->fc_nlinfo.nl_net = net;

 ipv6_addr_copy(&cfg->fc_dst, &rtmsg->rtmsg_dst);
 ipv6_addr_copy(&cfg->fc_src, &rtmsg->rtmsg_src);
 ipv6_addr_copy(&cfg->fc_gateway, &rtmsg->rtmsg_gateway);
}
