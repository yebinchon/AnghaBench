
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct xfrm_audit {int secid; int sessionid; int loginuid; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_pid; int nlmsg_seq; int nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int type; } ;
struct km_event {struct net* net; int pid; int seq; int event; TYPE_1__ data; } ;
struct TYPE_4__ {int sid; int sessionid; int loginuid; } ;


 int ESRCH ;
 TYPE_2__ NETLINK_CB (struct sk_buff*) ;
 int XFRM_POLICY_TYPE_MAIN ;
 int copy_from_user_policy_type (int *,struct nlattr**) ;
 int km_policy_notify (int *,int ,struct km_event*) ;
 struct net* sock_net (int ) ;
 int xfrm_policy_flush (struct net*,int ,struct xfrm_audit*) ;

__attribute__((used)) static int xfrm_flush_policy(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct km_event c;
 u8 type = XFRM_POLICY_TYPE_MAIN;
 int err;
 struct xfrm_audit audit_info;

 err = copy_from_user_policy_type(&type, attrs);
 if (err)
  return err;

 audit_info.loginuid = NETLINK_CB(skb).loginuid;
 audit_info.sessionid = NETLINK_CB(skb).sessionid;
 audit_info.secid = NETLINK_CB(skb).sid;
 err = xfrm_policy_flush(net, type, &audit_info);
 if (err) {
  if (err == -ESRCH)
   return 0;
  return err;
 }

 c.data.type = type;
 c.event = nlh->nlmsg_type;
 c.seq = nlh->nlmsg_seq;
 c.pid = nlh->nlmsg_pid;
 c.net = net;
 km_policy_notify(((void*)0), 0, &c);
 return 0;
}
