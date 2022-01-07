
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_queue {int dummy; } ;
struct Qdisc_ops {int priv_size; int dequeue; int enqueue; } ;
struct Qdisc {int padded; int refcnt; struct netdev_queue* dev_queue; int dequeue; int enqueue; struct Qdisc_ops* ops; int q; int list; } ;


 int ENOBUFS ;
 struct Qdisc* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int QDISC_ALIGN (unsigned long) ;
 int QDISC_ALIGNTO ;
 int atomic_set (int *,int) ;
 int dev_hold (int ) ;
 void* kzalloc (unsigned int,int ) ;
 int qdisc_dev (struct Qdisc*) ;
 int skb_queue_head_init (int *) ;

struct Qdisc *qdisc_alloc(struct netdev_queue *dev_queue,
     struct Qdisc_ops *ops)
{
 void *p;
 struct Qdisc *sch;
 unsigned int size;
 int err = -ENOBUFS;


 size = QDISC_ALIGN(sizeof(*sch));
 size += ops->priv_size + (QDISC_ALIGNTO - 1);

 p = kzalloc(size, GFP_KERNEL);
 if (!p)
  goto errout;
 sch = (struct Qdisc *) QDISC_ALIGN((unsigned long) p);
 sch->padded = (char *) sch - (char *) p;

 INIT_LIST_HEAD(&sch->list);
 skb_queue_head_init(&sch->q);
 sch->ops = ops;
 sch->enqueue = ops->enqueue;
 sch->dequeue = ops->dequeue;
 sch->dev_queue = dev_queue;
 dev_hold(qdisc_dev(sch));
 atomic_set(&sch->refcnt, 1);

 return sch;
errout:
 return ERR_PTR(err);
}
