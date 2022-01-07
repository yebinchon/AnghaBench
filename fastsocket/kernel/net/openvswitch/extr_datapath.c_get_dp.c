
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {struct datapath* dp; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct datapath {int dummy; } ;


 struct net_device* __dev_get_by_index (struct net*,int) ;
 int dev_base_lock ;
 struct vport* ovs_internal_dev_get_vport (struct net_device*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static struct datapath *get_dp(struct net *net, int dp_ifindex)
{
 struct datapath *dp = ((void*)0);
 struct net_device *dev;

 read_lock(&dev_base_lock);
 dev = __dev_get_by_index(net, dp_ifindex);
 if (dev) {
  struct vport *vport = ovs_internal_dev_get_vport(dev);
  if (vport)
   dp = vport->dp;
 }
 read_unlock(&dev_base_lock);

 return dp;
}
