
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int qdisc_sleeping; } ;
struct net_device {TYPE_1__ rx_queue; int qdisc; } ;
struct Qdisc {int dummy; } ;


 struct Qdisc* qdisc_match_from_root (int ,int ) ;

struct Qdisc *qdisc_lookup(struct net_device *dev, u32 handle)
{
 struct Qdisc *q;

 q = qdisc_match_from_root(dev->qdisc, handle);
 if (q)
  goto out;

 q = qdisc_match_from_root(dev->rx_queue.qdisc_sleeping, handle);
out:
 return q;
}
