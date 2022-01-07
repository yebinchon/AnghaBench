
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_user_expire {int hard; int state; } ;
struct xfrm_state {int mark; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ hard; } ;
struct km_event {TYPE_1__ data; int pid; } ;


 int EMSGSIZE ;
 int XFRM_MSG_EXPIRE ;
 int copy_to_user_state (struct xfrm_state*,int *) ;
 struct xfrm_user_expire* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 scalar_t__ xfrm_mark_put (struct sk_buff*,int *) ;

__attribute__((used)) static int build_expire(struct sk_buff *skb, struct xfrm_state *x, struct km_event *c)
{
 struct xfrm_user_expire *ue;
 struct nlmsghdr *nlh;

 nlh = nlmsg_put(skb, c->pid, 0, XFRM_MSG_EXPIRE, sizeof(*ue), 0);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 ue = nlmsg_data(nlh);
 copy_to_user_state(x, &ue->state);
 ue->hard = (c->data.hard != 0) ? 1 : 0;

 if (xfrm_mark_put(skb, &x->mark))
  goto nla_put_failure;

 return nlmsg_end(skb, nlh);

nla_put_failure:
 return -EMSGSIZE;
}
