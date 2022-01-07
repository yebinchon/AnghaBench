
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct i1480u {int wlp; } ;


 struct i1480u* netdev_priv (struct net_device*) ;
 int wlp_reset_all (int *) ;

void i1480u_tx_timeout(struct net_device *net_dev)
{
 struct i1480u *i1480u = netdev_priv(net_dev);

 wlp_reset_all(&i1480u->wlp);
}
