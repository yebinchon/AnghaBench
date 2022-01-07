
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct inet_frags {int dummy; } ;
struct TYPE_4__ {int last_in; int lock; TYPE_3__* fragments; } ;
struct frag_queue {TYPE_1__ q; int iif; } ;
struct TYPE_5__ {struct net_device* dev; } ;


 int ICMPV6_EXC_FRAGTIME ;
 int ICMPV6_TIME_EXCEED ;
 int INET_FRAG_COMPLETE ;
 int INET_FRAG_FIRST_IN ;
 int IP6_INC_STATS_BH (struct net*,int ,int ) ;
 int IPSTATS_MIB_REASMFAILS ;
 int IPSTATS_MIB_REASMTIMEOUT ;
 int __in6_dev_get (struct net_device*) ;
 struct net_device* dev_get_by_index (struct net*,int ) ;
 int dev_put (struct net_device*) ;
 int icmpv6_send (TYPE_3__*,int ,int ,int ,struct net_device*) ;
 int inet_frag_kill (TYPE_1__*,struct inet_frags*) ;
 int inet_frag_put (TYPE_1__*,struct inet_frags*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ip6_expire_frag_queue(struct net *net, struct frag_queue *fq,
      struct inet_frags *frags)
{
 struct net_device *dev = ((void*)0);

 spin_lock(&fq->q.lock);

 if (fq->q.last_in & INET_FRAG_COMPLETE)
  goto out;

 inet_frag_kill(&fq->q, frags);

 dev = dev_get_by_index(net, fq->iif);
 if (!dev)
  goto out;

 rcu_read_lock();
 IP6_INC_STATS_BH(net, __in6_dev_get(dev), IPSTATS_MIB_REASMTIMEOUT);
 IP6_INC_STATS_BH(net, __in6_dev_get(dev), IPSTATS_MIB_REASMFAILS);
 rcu_read_unlock();


 if (!(fq->q.last_in & INET_FRAG_FIRST_IN) || !fq->q.fragments)
  goto out;






 fq->q.fragments->dev = dev;
 icmpv6_send(fq->q.fragments, ICMPV6_TIME_EXCEED, ICMPV6_EXC_FRAGTIME, 0, dev);
out:
 if (dev)
  dev_put(dev);
 spin_unlock(&fq->q.lock);
 inet_frag_put(&fq->q, frags);
}
