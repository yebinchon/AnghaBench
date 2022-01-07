
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct sliccard* ulong ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct sliccard {TYPE_1__ pingtimer; struct sliccard* card; } ;
struct net_device {int dummy; } ;
struct adapter {TYPE_1__ pingtimer; struct adapter* card; } ;


 int ASSERT (struct sliccard*) ;
 int HZ ;
 int PING_TIMER_INTERVAL ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 struct sliccard* netdev_priv (struct net_device*) ;

__attribute__((used)) static void slic_timer_ping(ulong dev)
{
 struct adapter *adapter;
 struct sliccard *card;

 ASSERT(dev);
 adapter = netdev_priv((struct net_device *)dev);
 ASSERT(adapter);
 card = adapter->card;
 ASSERT(card);

 adapter->pingtimer.expires = jiffies + (PING_TIMER_INTERVAL * HZ);
 add_timer(&adapter->pingtimer);
}
