
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipx_interface_definition {scalar_t__ ipx_special; int ipx_device; int ipx_dlink_type; } ;
struct ipx_interface {int dummy; } ;
typedef scalar_t__ __be16 ;


 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int EPROTONOSUPPORT ;
 scalar_t__ IPX_INTERNAL ;
 struct net_device* __dev_get_by_name (int *,int ) ;
 struct ipx_interface* __ipxitf_find_using_phys (struct net_device*,scalar_t__) ;
 int __ipxitf_put (struct ipx_interface*) ;
 int init_net ;
 int ipx_interfaces_lock ;
 struct ipx_interface* ipx_internal_net ;
 scalar_t__ ipx_map_frame_type (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int ipxitf_delete(struct ipx_interface_definition *idef)
{
 struct net_device *dev = ((void*)0);
 __be16 dlink_type = 0;
 struct ipx_interface *intrfc;
 int rc = 0;

 spin_lock_bh(&ipx_interfaces_lock);
 if (idef->ipx_special == IPX_INTERNAL) {
  if (ipx_internal_net) {
   __ipxitf_put(ipx_internal_net);
   goto out;
  }
  rc = -ENOENT;
  goto out;
 }

 dlink_type = ipx_map_frame_type(idef->ipx_dlink_type);
 rc = -EPROTONOSUPPORT;
 if (!dlink_type)
  goto out;

 dev = __dev_get_by_name(&init_net, idef->ipx_device);
 rc = -ENODEV;
 if (!dev)
  goto out;

 intrfc = __ipxitf_find_using_phys(dev, dlink_type);
 rc = -EINVAL;
 if (!intrfc)
  goto out;
 __ipxitf_put(intrfc);

 rc = 0;
out:
 spin_unlock_bh(&ipx_interfaces_lock);
 return rc;
}
