
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfrm_user_acquire {int seq; int calgos; int ealgos; int aalgos; int policy; int sel; int saddr; int id; } ;
struct xfrm_tmpl {int calgos; int ealgos; int aalgos; } ;
struct TYPE_4__ {int seq; } ;
struct TYPE_3__ {int saddr; } ;
struct xfrm_state {TYPE_2__ km; int sel; TYPE_1__ props; int id; } ;
struct xfrm_policy {int mark; int type; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
typedef int __u32 ;


 int EMSGSIZE ;
 int XFRM_MSG_ACQUIRE ;
 int copy_to_user_policy (struct xfrm_policy*,int *,int) ;
 scalar_t__ copy_to_user_policy_type (int ,struct sk_buff*) ;
 scalar_t__ copy_to_user_state_sec_ctx (struct xfrm_state*,struct sk_buff*) ;
 scalar_t__ copy_to_user_tmpl (struct xfrm_policy*,struct sk_buff*) ;
 int memcpy (int *,int *,int) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct xfrm_user_acquire* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 int xfrm_get_acqseq () ;
 scalar_t__ xfrm_mark_put (struct sk_buff*,int *) ;

__attribute__((used)) static int build_acquire(struct sk_buff *skb, struct xfrm_state *x,
    struct xfrm_tmpl *xt, struct xfrm_policy *xp,
    int dir)
{
 struct xfrm_user_acquire *ua;
 struct nlmsghdr *nlh;
 __u32 seq = xfrm_get_acqseq();

 nlh = nlmsg_put(skb, 0, 0, XFRM_MSG_ACQUIRE, sizeof(*ua), 0);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 ua = nlmsg_data(nlh);
 memcpy(&ua->id, &x->id, sizeof(ua->id));
 memcpy(&ua->saddr, &x->props.saddr, sizeof(ua->saddr));
 memcpy(&ua->sel, &x->sel, sizeof(ua->sel));
 copy_to_user_policy(xp, &ua->policy, dir);
 ua->aalgos = xt->aalgos;
 ua->ealgos = xt->ealgos;
 ua->calgos = xt->calgos;
 ua->seq = x->km.seq = seq;

 if (copy_to_user_tmpl(xp, skb) < 0)
  goto nlmsg_failure;
 if (copy_to_user_state_sec_ctx(x, skb))
  goto nlmsg_failure;
 if (copy_to_user_policy_type(xp->type, skb) < 0)
  goto nlmsg_failure;
 if (xfrm_mark_put(skb, &xp->mark))
  goto nla_put_failure;

 return nlmsg_end(skb, nlh);

nla_put_failure:
nlmsg_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
