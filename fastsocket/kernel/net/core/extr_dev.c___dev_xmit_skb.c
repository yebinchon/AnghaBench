
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int dummy; } ;
struct Qdisc {int flags; int state; } ;
typedef int spinlock_t ;


 int NET_XMIT_DROP ;
 int NET_XMIT_SUCCESS ;
 int TCQ_F_CAN_BYPASS ;
 int __QDISC_STATE_DEACTIVATED ;
 int __QDISC_STATE_RUNNING ;
 int __qdisc_run (struct Qdisc*) ;
 int __qdisc_update_bstats (struct Qdisc*,int ) ;
 int clear_bit (int ,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int qdisc_enqueue_root (struct sk_buff*,struct Qdisc*) ;
 int * qdisc_lock (struct Qdisc*) ;
 int qdisc_qlen (struct Qdisc*) ;
 int qdisc_run (struct Qdisc*) ;
 scalar_t__ sch_direct_xmit (struct sk_buff*,struct Qdisc*,struct net_device*,struct netdev_queue*,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int __dev_xmit_skb(struct sk_buff *skb, struct Qdisc *q,
     struct net_device *dev,
     struct netdev_queue *txq)
{
 spinlock_t *root_lock = qdisc_lock(q);
 int rc;

 spin_lock(root_lock);
 if (unlikely(test_bit(__QDISC_STATE_DEACTIVATED, &q->state))) {
  kfree_skb(skb);
  rc = NET_XMIT_DROP;
 } else if ((q->flags & TCQ_F_CAN_BYPASS) && !qdisc_qlen(q) &&
     !test_and_set_bit(__QDISC_STATE_RUNNING, &q->state)) {





  __qdisc_update_bstats(q, skb->len);
  if (sch_direct_xmit(skb, q, dev, txq, root_lock))
   __qdisc_run(q);
  else
   clear_bit(__QDISC_STATE_RUNNING, &q->state);

  rc = NET_XMIT_SUCCESS;
 } else {
  rc = qdisc_enqueue_root(skb, q);
  qdisc_run(q);
 }
 spin_unlock(root_lock);

 return rc;
}
