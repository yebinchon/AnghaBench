
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int sk; } ;
struct netlink_callback {int* args; TYPE_1__* nlh; int skb; } ;
struct net {int dummy; } ;
struct neighbour {int dev; struct neighbour* next; } ;
struct neigh_table {int hash_mask; int lock; struct neighbour** hash_buckets; } ;
struct TYPE_4__ {int pid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 TYPE_2__ NETLINK_CB (int ) ;
 int NLM_F_MULTI ;
 int RTM_NEWNEIGH ;
 struct net* dev_net (int ) ;
 scalar_t__ neigh_fill_info (struct sk_buff*,struct neighbour*,int ,int ,int ,int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int neigh_dump_table(struct neigh_table *tbl, struct sk_buff *skb,
       struct netlink_callback *cb)
{
 struct net * net = sock_net(skb->sk);
 struct neighbour *n;
 int rc, h, s_h = cb->args[1];
 int idx, s_idx = idx = cb->args[2];

 read_lock_bh(&tbl->lock);
 for (h = 0; h <= tbl->hash_mask; h++) {
  if (h < s_h)
   continue;
  if (h > s_h)
   s_idx = 0;
  for (n = tbl->hash_buckets[h], idx = 0; n; n = n->next) {
   if (dev_net(n->dev) != net)
    continue;
   if (idx < s_idx)
    goto next;
   if (neigh_fill_info(skb, n, NETLINK_CB(cb->skb).pid,
         cb->nlh->nlmsg_seq,
         RTM_NEWNEIGH,
         NLM_F_MULTI) <= 0) {
    read_unlock_bh(&tbl->lock);
    rc = -1;
    goto out;
   }
  next:
   idx++;
  }
 }
 read_unlock_bh(&tbl->lock);
 rc = skb->len;
out:
 cb->args[1] = h;
 cb->args[2] = idx;
 return rc;
}
