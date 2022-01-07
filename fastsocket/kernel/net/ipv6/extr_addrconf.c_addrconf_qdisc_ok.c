
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int qdisc_tx_is_noop (struct net_device const*) ;

__attribute__((used)) static inline bool addrconf_qdisc_ok(const struct net_device *dev)
{
 return !qdisc_tx_is_noop(dev);
}
