
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcamsg {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_type; int nlmsg_flags; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int pid; } ;


 int BUG () ;
 int EAGAIN ;
 int EINVAL ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int NLM_F_REPLACE ;



 int TCA_ACT_MAX ;
 size_t TCA_ACT_TAB ;
 struct net init_net ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int *) ;
 int pr_notice (char*) ;
 struct net* sock_net (int ) ;
 int tca_action_gd (struct nlattr*,struct nlmsghdr*,int ,int const) ;
 int tcf_action_add (struct nlattr*,struct nlmsghdr*,int ,int) ;

__attribute__((used)) static int tc_ctl_action(struct sk_buff *skb, struct nlmsghdr *n, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct nlattr *tca[TCA_ACT_MAX + 1];
 u32 pid = skb ? NETLINK_CB(skb).pid : 0;
 int ret = 0, ovr = 0;

 if (net != &init_net)
  return -EINVAL;

 ret = nlmsg_parse(n, sizeof(struct tcamsg), tca, TCA_ACT_MAX, ((void*)0));
 if (ret < 0)
  return ret;

 if (tca[TCA_ACT_TAB] == ((void*)0)) {
  pr_notice("tc_ctl_action: received NO action attribs\n");
  return -EINVAL;
 }



 switch (n->nlmsg_type) {
 case 128:






  if (n->nlmsg_flags&NLM_F_REPLACE)
   ovr = 1;
replay:
  ret = tcf_action_add(tca[TCA_ACT_TAB], n, pid, ovr);
  if (ret == -EAGAIN)
   goto replay;
  break;
 case 130:
  ret = tca_action_gd(tca[TCA_ACT_TAB], n, pid, 130);
  break;
 case 129:
  ret = tca_action_gd(tca[TCA_ACT_TAB], n, pid, 129);
  break;
 default:
  BUG();
 }

 return ret;
}
