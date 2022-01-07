
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct rtmsg {int rtm_flags; } ;
struct rt6_rtnl_dump_arg {TYPE_1__* cb; int skb; int net; } ;
struct rt6_info {int dummy; } ;
struct TYPE_7__ {int pid; } ;
struct TYPE_6__ {int nlmsg_seq; } ;
struct TYPE_5__ {TYPE_2__* nlh; int skb; } ;


 TYPE_4__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int RTM_F_PREFIX ;
 int RTM_NEWROUTE ;
 struct rtmsg* nlmsg_data (TYPE_2__*) ;
 int nlmsg_len (TYPE_2__*) ;
 int rt6_fill_node (int ,int ,struct rt6_info*,int *,int *,int ,int ,int ,int ,int,int ,int ) ;

int rt6_dump_route(struct rt6_info *rt, void *p_arg)
{
 struct rt6_rtnl_dump_arg *arg = (struct rt6_rtnl_dump_arg *) p_arg;
 int prefix;

 if (nlmsg_len(arg->cb->nlh) >= sizeof(struct rtmsg)) {
  struct rtmsg *rtm = nlmsg_data(arg->cb->nlh);
  prefix = (rtm->rtm_flags & RTM_F_PREFIX) != 0;
 } else
  prefix = 0;

 return rt6_fill_node(arg->net,
       arg->skb, rt, ((void*)0), ((void*)0), 0, RTM_NEWROUTE,
       NETLINK_CB(arg->cb->skb).pid, arg->cb->nlh->nlmsg_seq,
       prefix, 0, NLM_F_MULTI);
}
