
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_ops {int (* ndo_set_config ) (struct net_device*,int *) ;int (* ndo_do_ioctl ) (struct net_device*,struct ifreq*,unsigned int) ;int ndo_set_rx_mode; int ndo_set_multicast_list; } ;
struct net_device {int tx_queue_len; int addr_len; int broadcast; int type; struct net_device_ops* netdev_ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int sa_data; int sa_family; } ;
struct ifreq {char* ifr_newname; int ifr_qlen; TYPE_1__ ifr_hwaddr; int ifr_map; int ifr_mtu; int ifr_flags; int ifr_name; } ;


 int AF_UNSPEC ;
 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int IFNAMSIZ ;
 int NETDEV_CHANGEADDR ;

 unsigned int SIOCBONDCHANGEACTIVE ;
 unsigned int SIOCBONDENSLAVE ;
 unsigned int SIOCBONDINFOQUERY ;
 unsigned int SIOCBONDRELEASE ;
 unsigned int SIOCBONDSETHWADDR ;
 unsigned int SIOCBONDSLAVEINFOQUERY ;
 unsigned int SIOCBRADDIF ;
 unsigned int SIOCBRDELIF ;

 unsigned int SIOCDEVPRIVATE ;
 unsigned int SIOCGMIIPHY ;
 unsigned int SIOCGMIIREG ;
 unsigned int SIOCSMIIREG ;
 unsigned int SIOCWANDEV ;
 struct net_device* __dev_get_by_name (struct net*,int ) ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int dev_change_flags (struct net_device*,int ) ;
 int dev_change_name (struct net_device*,char*) ;
 int dev_mc_add (struct net_device*,int ,int ,int) ;
 int dev_mc_delete (struct net_device*,int ,int ,int) ;
 int dev_set_mac_address (struct net_device*,TYPE_1__*) ;
 int dev_set_mtu (struct net_device*,int ) ;
 int memcpy (int ,int ,int ) ;
 int min (int,size_t) ;
 int net_hwtstamp_validate (struct ifreq*) ;
 int netif_device_present (struct net_device*) ;
 int stub1 (struct net_device*,int *) ;
 int stub2 (struct net_device*,struct ifreq*,unsigned int) ;

__attribute__((used)) static int dev_ifsioc(struct net *net, struct ifreq *ifr, unsigned int cmd)
{
 int err;
 struct net_device *dev = __dev_get_by_name(net, ifr->ifr_name);
 const struct net_device_ops *ops;

 if (!dev)
  return -ENODEV;

 ops = dev->netdev_ops;

 switch (cmd) {
 case 135:
  return dev_change_flags(dev, ifr->ifr_flags);

 case 131:

  return -EOPNOTSUPP;

 case 130:
  return dev_set_mtu(dev, ifr->ifr_mtu);

 case 134:
  return dev_set_mac_address(dev, &ifr->ifr_hwaddr);

 case 133:
  if (ifr->ifr_hwaddr.sa_family != dev->type)
   return -EINVAL;
  memcpy(dev->broadcast, ifr->ifr_hwaddr.sa_data,
         min(sizeof ifr->ifr_hwaddr.sa_data, (size_t) dev->addr_len));
  call_netdevice_notifiers(NETDEV_CHANGEADDR, dev);
  return 0;

 case 132:
  if (ops->ndo_set_config) {
   if (!netif_device_present(dev))
    return -ENODEV;
   return ops->ndo_set_config(dev, &ifr->ifr_map);
  }
  return -EOPNOTSUPP;

 case 138:
  if ((!ops->ndo_set_multicast_list && !ops->ndo_set_rx_mode) ||
      ifr->ifr_hwaddr.sa_family != AF_UNSPEC)
   return -EINVAL;
  if (!netif_device_present(dev))
   return -ENODEV;
  return dev_mc_add(dev, ifr->ifr_hwaddr.sa_data,
      dev->addr_len, 1);

 case 137:
  if ((!ops->ndo_set_multicast_list && !ops->ndo_set_rx_mode) ||
      ifr->ifr_hwaddr.sa_family != AF_UNSPEC)
   return -EINVAL;
  if (!netif_device_present(dev))
   return -ENODEV;
  return dev_mc_delete(dev, ifr->ifr_hwaddr.sa_data,
         dev->addr_len, 1);

 case 128:
  if (ifr->ifr_qlen < 0)
   return -EINVAL;
  dev->tx_queue_len = ifr->ifr_qlen;
  return 0;

 case 129:
  ifr->ifr_newname[IFNAMSIZ-1] = '\0';
  return dev_change_name(dev, ifr->ifr_newname);

 case 136:
  err = net_hwtstamp_validate(ifr);
  if (err)
   return err;





 default:
  if ((cmd >= SIOCDEVPRIVATE &&
      cmd <= SIOCDEVPRIVATE + 15) ||
      cmd == SIOCBONDENSLAVE ||
      cmd == SIOCBONDRELEASE ||
      cmd == SIOCBONDSETHWADDR ||
      cmd == SIOCBONDSLAVEINFOQUERY ||
      cmd == SIOCBONDINFOQUERY ||
      cmd == SIOCBONDCHANGEACTIVE ||
      cmd == SIOCGMIIPHY ||
      cmd == SIOCGMIIREG ||
      cmd == SIOCSMIIREG ||
      cmd == SIOCBRADDIF ||
      cmd == SIOCBRDELIF ||
      cmd == 136 ||
      cmd == SIOCWANDEV) {
   err = -EOPNOTSUPP;
   if (ops->ndo_do_ioctl) {
    if (netif_device_present(dev))
     err = ops->ndo_do_ioctl(dev, ifr, cmd);
    else
     err = -ENODEV;
   }
  } else
   err = -EINVAL;

 }
 return err;
}
