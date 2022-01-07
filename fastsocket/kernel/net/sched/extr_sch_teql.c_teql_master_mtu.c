
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct teql_master {struct Qdisc* slaves; } ;
struct net_device {int mtu; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int mtu; } ;


 int EINVAL ;
 struct Qdisc* NEXT_SLAVE (struct Qdisc*) ;
 struct teql_master* netdev_priv (struct net_device*) ;
 TYPE_1__* qdisc_dev (struct Qdisc*) ;

__attribute__((used)) static int teql_master_mtu(struct net_device *dev, int new_mtu)
{
 struct teql_master *m = netdev_priv(dev);
 struct Qdisc *q;

 if (new_mtu < 68)
  return -EINVAL;

 q = m->slaves;
 if (q) {
  do {
   if (new_mtu > qdisc_dev(q)->mtu)
    return -EINVAL;
  } while ((q=NEXT_SLAVE(q)) != m->slaves);
 }

 dev->mtu = new_mtu;
 return 0;
}
