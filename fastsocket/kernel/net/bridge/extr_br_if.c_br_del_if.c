
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct net_bridge_port* br_port; } ;
struct net_bridge_port {struct net_bridge* br; } ;
struct net_bridge {int lock; } ;


 int EINVAL ;
 int br_features_recompute (struct net_bridge*) ;
 int br_stp_recalculate_bridge_id (struct net_bridge*) ;
 int del_nbp (struct net_bridge_port*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int br_del_if(struct net_bridge *br, struct net_device *dev)
{
 struct net_bridge_port *p = dev->br_port;

 if (!p || p->br != br)
  return -EINVAL;

 del_nbp(p);

 spin_lock_bh(&br->lock);
 br_stp_recalculate_bridge_id(br);
 spin_unlock_bh(&br->lock);

 br_features_recompute(br);

 return 0;
}
