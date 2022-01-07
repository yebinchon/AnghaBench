
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct vlan_net {int name_type; } ;
struct vlan_dev_info {int dummy; } ;
struct net_device {char* name; int * rtnl_link_ops; int mtu; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int flags; int * dent; struct net_device* real_dev; scalar_t__ vlan_id; } ;


 int ENOBUFS ;
 int ERANGE ;
 int IFNAMSIZ ;
 int VLAN_FLAG_REORDER_HDR ;




 scalar_t__ VLAN_VID_MASK ;
 struct net_device* alloc_netdev (int,char*,int ) ;
 struct net* dev_net (struct net_device*) ;
 int dev_net_set (struct net_device*,struct net*) ;
 int free_netdev (struct net_device*) ;
 struct vlan_net* net_generic (struct net*,int ) ;
 int register_vlan_dev (struct net_device*) ;
 int snprintf (char*,int,char*,scalar_t__,...) ;
 int vlan_check_real_dev (struct net_device*,scalar_t__) ;
 TYPE_1__* vlan_dev_info (struct net_device*) ;
 int vlan_link_ops ;
 int vlan_net_id ;
 int vlan_setup ;

__attribute__((used)) static int register_vlan_device(struct net_device *real_dev, u16 vlan_id)
{
 struct net_device *new_dev;
 struct net *net = dev_net(real_dev);
 struct vlan_net *vn = net_generic(net, vlan_net_id);
 char name[IFNAMSIZ];
 int err;

 if (vlan_id >= VLAN_VID_MASK)
  return -ERANGE;

 err = vlan_check_real_dev(real_dev, vlan_id);
 if (err < 0)
  return err;


 switch (vn->name_type) {
 case 129:

  snprintf(name, IFNAMSIZ, "%s.%.4i", real_dev->name, vlan_id);
  break;
 case 130:



  snprintf(name, IFNAMSIZ, "vlan%i", vlan_id);
  break;
 case 128:



  snprintf(name, IFNAMSIZ, "%s.%i", real_dev->name, vlan_id);
  break;
 case 131:



 default:
  snprintf(name, IFNAMSIZ, "vlan%.4i", vlan_id);
 }

 new_dev = alloc_netdev(sizeof(struct vlan_dev_info), name,
      vlan_setup);

 if (new_dev == ((void*)0))
  return -ENOBUFS;

 dev_net_set(new_dev, net);



 new_dev->mtu = real_dev->mtu;

 vlan_dev_info(new_dev)->vlan_id = vlan_id;
 vlan_dev_info(new_dev)->real_dev = real_dev;
 vlan_dev_info(new_dev)->dent = ((void*)0);
 vlan_dev_info(new_dev)->flags = VLAN_FLAG_REORDER_HDR;

 new_dev->rtnl_link_ops = &vlan_link_ops;
 err = register_vlan_dev(new_dev);
 if (err < 0)
  goto out_free_newdev;

 return 0;

out_free_newdev:
 free_netdev(new_dev);
 return err;
}
