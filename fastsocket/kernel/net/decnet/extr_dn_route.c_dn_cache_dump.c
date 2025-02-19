
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sk_buff {int len; int sk; } ;
struct rtmsg {int rtm_flags; } ;
struct netlink_callback {int* args; TYPE_4__* nlh; int skb; } ;
struct net {int dummy; } ;
struct TYPE_8__ {int dn_next; } ;
struct TYPE_7__ {TYPE_2__ dst; } ;
struct dn_route {TYPE_1__ u; } ;
struct TYPE_11__ {int pid; } ;
struct TYPE_10__ {int nlmsg_seq; } ;
struct TYPE_9__ {int chain; } ;


 int EINVAL ;
 TYPE_6__ NETLINK_CB (int ) ;
 scalar_t__ NLMSG_DATA (TYPE_4__*) ;
 int NLMSG_PAYLOAD (TYPE_4__*,int ) ;
 int NLM_F_MULTI ;
 int RTM_F_CLONED ;
 int RTM_NEWROUTE ;
 scalar_t__ dn_rt_fill_info (struct sk_buff*,int ,int ,int ,int,int ) ;
 int dn_rt_hash_mask ;
 TYPE_3__* dn_rt_hash_table ;
 int dst_clone (TYPE_2__*) ;
 struct net init_net ;
 struct dn_route* rcu_dereference (int ) ;
 int rcu_read_lock_bh () ;
 int rcu_read_unlock_bh () ;
 int skb_dst_drop (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,int ) ;
 struct net* sock_net (int ) ;

int dn_cache_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct net *net = sock_net(skb->sk);
 struct dn_route *rt;
 int h, s_h;
 int idx, s_idx;

 if (net != &init_net)
  return 0;

 if (NLMSG_PAYLOAD(cb->nlh, 0) < sizeof(struct rtmsg))
  return -EINVAL;
 if (!(((struct rtmsg *)NLMSG_DATA(cb->nlh))->rtm_flags&RTM_F_CLONED))
  return 0;

 s_h = cb->args[0];
 s_idx = idx = cb->args[1];
 for(h = 0; h <= dn_rt_hash_mask; h++) {
  if (h < s_h)
   continue;
  if (h > s_h)
   s_idx = 0;
  rcu_read_lock_bh();
  for(rt = rcu_dereference(dn_rt_hash_table[h].chain), idx = 0;
   rt;
   rt = rcu_dereference(rt->u.dst.dn_next), idx++) {
   if (idx < s_idx)
    continue;
   skb_dst_set(skb, dst_clone(&rt->u.dst));
   if (dn_rt_fill_info(skb, NETLINK_CB(cb->skb).pid,
     cb->nlh->nlmsg_seq, RTM_NEWROUTE,
     1, NLM_F_MULTI) <= 0) {
    skb_dst_drop(skb);
    rcu_read_unlock_bh();
    goto done;
   }
   skb_dst_drop(skb);
  }
  rcu_read_unlock_bh();
 }

done:
 cb->args[0] = h;
 cb->args[1] = idx;
 return skb->len;
}
