
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct teql_sched_data {struct neighbour* ncache; } ;
struct sk_buff {int len; int protocol; } ;
struct netdev_queue {int qdisc; } ;
struct net_device {int dummy; } ;
struct neighbour {int lock; int ha; int primary_key; TYPE_2__* tbl; int refcnt; } ;
struct TYPE_4__ {int key_len; } ;
struct TYPE_3__ {struct neighbour* neighbour; } ;


 int EAGAIN ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct neighbour*) ;
 int PTR_ERR (struct neighbour*) ;
 struct neighbour* __neigh_lookup_errno (TYPE_2__*,int ,struct net_device*) ;
 int atomic_inc (int *) ;
 int dev_hard_header (struct sk_buff*,struct net_device*,int ,int ,int *,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 scalar_t__ neigh_event_send (struct neighbour*,struct sk_buff*) ;
 int neigh_release (struct neighbour*) ;
 struct netdev_queue* netdev_get_tx_queue (struct net_device*,int ) ;
 int ntohs (int ) ;
 struct teql_sched_data* qdisc_priv (int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 TYPE_1__* skb_dst (struct sk_buff*) ;
 int teql_neigh_release (int ) ;
 int xchg (struct neighbour**,struct neighbour*) ;

__attribute__((used)) static int
__teql_resolve(struct sk_buff *skb, struct sk_buff *skb_res, struct net_device *dev)
{
 struct netdev_queue *dev_queue = netdev_get_tx_queue(dev, 0);
 struct teql_sched_data *q = qdisc_priv(dev_queue->qdisc);
 struct neighbour *mn = skb_dst(skb)->neighbour;
 struct neighbour *n = q->ncache;

 if (mn->tbl == ((void*)0))
  return -EINVAL;
 if (n && n->tbl == mn->tbl &&
     memcmp(n->primary_key, mn->primary_key, mn->tbl->key_len) == 0) {
  atomic_inc(&n->refcnt);
 } else {
  n = __neigh_lookup_errno(mn->tbl, mn->primary_key, dev);
  if (IS_ERR(n))
   return PTR_ERR(n);
 }
 if (neigh_event_send(n, skb_res) == 0) {
  int err;

  read_lock(&n->lock);
  err = dev_hard_header(skb, dev, ntohs(skb->protocol),
          n->ha, ((void*)0), skb->len);
  read_unlock(&n->lock);

  if (err < 0) {
   neigh_release(n);
   return -EINVAL;
  }
  teql_neigh_release(xchg(&q->ncache, n));
  return 0;
 }
 neigh_release(n);
 return (skb_res == ((void*)0)) ? -EAGAIN : 1;
}
