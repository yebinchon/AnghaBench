
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int vport; } ;


 TYPE_1__* internal_dev_priv (struct net_device*) ;
 int ovs_vport_receive (int ,struct sk_buff*,int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int internal_dev_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 rcu_read_lock();
 ovs_vport_receive(internal_dev_priv(netdev)->vport, skb, ((void*)0));
 rcu_read_unlock();
 return 0;
}
