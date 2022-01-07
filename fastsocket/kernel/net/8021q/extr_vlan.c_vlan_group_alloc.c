
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_group {int hlist; struct net_device* real_dev; } ;
struct net_device {int ifindex; } ;


 int GFP_KERNEL ;
 int hlist_add_head_rcu (int *,int *) ;
 struct vlan_group* kzalloc (int,int ) ;
 int * vlan_group_hash ;
 size_t vlan_grp_hashfn (int ) ;

struct vlan_group *vlan_group_alloc(struct net_device *real_dev)
{
 struct vlan_group *grp;

 grp = kzalloc(sizeof(struct vlan_group), GFP_KERNEL);
 if (!grp)
  return ((void*)0);

 grp->real_dev = real_dev;
 hlist_add_head_rcu(&grp->hlist,
   &vlan_group_hash[vlan_grp_hashfn(real_dev->ifindex)]);
 return grp;
}
