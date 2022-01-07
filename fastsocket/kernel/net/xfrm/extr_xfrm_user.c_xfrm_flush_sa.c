
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_usersa_flush {int proto; } ;
struct xfrm_audit {int secid; int sessionid; int loginuid; } ;
struct sk_buff {int sk; } ;
struct nlmsghdr {int nlmsg_pid; int nlmsg_seq; int nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_3__ {int proto; } ;
struct km_event {struct net* net; int pid; int seq; int event; TYPE_1__ data; } ;
struct TYPE_4__ {int sid; int sessionid; int loginuid; } ;


 int ESRCH ;
 TYPE_2__ NETLINK_CB (struct sk_buff*) ;
 int km_state_notify (int *,struct km_event*) ;
 struct xfrm_usersa_flush* nlmsg_data (struct nlmsghdr*) ;
 struct net* sock_net (int ) ;
 int xfrm_state_flush (struct net*,int ,struct xfrm_audit*) ;

__attribute__((used)) static int xfrm_flush_sa(struct sk_buff *skb, struct nlmsghdr *nlh,
  struct nlattr **attrs)
{
 struct net *net = sock_net(skb->sk);
 struct km_event c;
 struct xfrm_usersa_flush *p = nlmsg_data(nlh);
 struct xfrm_audit audit_info;
 int err;

 audit_info.loginuid = NETLINK_CB(skb).loginuid;
 audit_info.sessionid = NETLINK_CB(skb).sessionid;
 audit_info.secid = NETLINK_CB(skb).sid;
 err = xfrm_state_flush(net, p->proto, &audit_info);
 if (err) {
  if (err == -ESRCH)
   return 0;
  return err;
 }
 c.data.proto = p->proto;
 c.event = nlh->nlmsg_type;
 c.seq = nlh->nlmsg_seq;
 c.pid = nlh->nlmsg_pid;
 c.net = net;
 km_state_notify(((void*)0), &c);

 return 0;
}
