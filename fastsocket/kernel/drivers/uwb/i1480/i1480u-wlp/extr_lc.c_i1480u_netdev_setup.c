
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct i1480u {int dummy; } ;


 int i1480u_init (struct i1480u*) ;
 int memset (struct i1480u*,int ,int) ;
 struct i1480u* netdev_priv (struct net_device*) ;

__attribute__((used)) static void i1480u_netdev_setup(struct net_device *net_dev)
{
 struct i1480u *i1480u = netdev_priv(net_dev);

 memset(i1480u, 0, sizeof(*i1480u));
 i1480u_init(i1480u);
}
