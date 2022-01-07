
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;





 int pr_warning (char*,int ) ;
 int vlan_proc_add_dev (struct net_device*) ;
 int vlan_proc_rem_dev (struct net_device*) ;

__attribute__((used)) static void __vlan_device_event(struct net_device *dev, unsigned long event)
{
 switch (event) {
 case 130:
  vlan_proc_rem_dev(dev);
  if (vlan_proc_add_dev(dev) < 0)
   pr_warning("8021q: failed to change proc name for %s\n",
     dev->name);
  break;
 case 129:
  if (vlan_proc_add_dev(dev) < 0)
   pr_warning("8021q: failed to add proc entry for %s\n",
     dev->name);
  break;
 case 128:
  vlan_proc_rem_dev(dev);
  break;
 }
}
