
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int reqid; int saddr; int family; } ;
struct TYPE_6__ {int proto; int spi; int daddr; } ;
struct xfrm_state {int replay_maxdiff; int replay_maxage; int mark; int curlft; int replay; TYPE_3__ props; TYPE_2__ id; } ;
struct TYPE_5__ {int proto; int family; int spi; int daddr; } ;
struct xfrm_aevent_id {int flags; int reqid; int saddr; TYPE_1__ sa_id; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_8__ {int aevent; } ;
struct km_event {TYPE_4__ data; int seq; int pid; } ;


 int EMSGSIZE ;
 int HZ ;
 int NLA_PUT (struct sk_buff*,int ,int,int *) ;
 int NLA_PUT_U32 (struct sk_buff*,int ,int) ;
 int XFRMA_ETIMER_THRESH ;
 int XFRMA_LTIME_VAL ;
 int XFRMA_REPLAY_THRESH ;
 int XFRMA_REPLAY_VAL ;
 int XFRM_AE_ETHR ;
 int XFRM_AE_RTHR ;
 int XFRM_MSG_NEWAE ;
 int memcpy (int *,int *,int) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct xfrm_aevent_id* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 scalar_t__ xfrm_mark_put (struct sk_buff*,int *) ;

__attribute__((used)) static int build_aevent(struct sk_buff *skb, struct xfrm_state *x, struct km_event *c)
{
 struct xfrm_aevent_id *id;
 struct nlmsghdr *nlh;

 nlh = nlmsg_put(skb, c->pid, c->seq, XFRM_MSG_NEWAE, sizeof(*id), 0);
 if (nlh == ((void*)0))
  return -EMSGSIZE;

 id = nlmsg_data(nlh);
 memcpy(&id->sa_id.daddr, &x->id.daddr,sizeof(x->id.daddr));
 id->sa_id.spi = x->id.spi;
 id->sa_id.family = x->props.family;
 id->sa_id.proto = x->id.proto;
 memcpy(&id->saddr, &x->props.saddr,sizeof(x->props.saddr));
 id->reqid = x->props.reqid;
 id->flags = c->data.aevent;

 NLA_PUT(skb, XFRMA_REPLAY_VAL, sizeof(x->replay), &x->replay);
 NLA_PUT(skb, XFRMA_LTIME_VAL, sizeof(x->curlft), &x->curlft);

 if (id->flags & XFRM_AE_RTHR)
  NLA_PUT_U32(skb, XFRMA_REPLAY_THRESH, x->replay_maxdiff);

 if (id->flags & XFRM_AE_ETHR)
  NLA_PUT_U32(skb, XFRMA_ETIMER_THRESH,
       x->replay_maxage * 10 / HZ);

 if (xfrm_mark_put(skb, &x->mark))
  goto nla_put_failure;

 return nlmsg_end(skb, nlh);

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}
