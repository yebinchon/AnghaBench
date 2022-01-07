
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct ifla_vf_vlan {int dummy; } ;
struct ifla_vf_tx_rate {int dummy; } ;
struct ifla_vf_mac {int dummy; } ;


 int RTEXT_FILTER_VF ;
 scalar_t__ dev_is_pci (scalar_t__) ;
 int dev_num_vf (scalar_t__) ;
 int nla_total_size (int) ;

__attribute__((used)) static inline int rtnl_vfinfo_size(const struct net_device *dev,
       u32 ext_filter_mask)
{
 if (dev->dev.parent && dev_is_pci(dev->dev.parent) &&
     (ext_filter_mask & RTEXT_FILTER_VF)) {
  int num_vfs = dev_num_vf(dev->dev.parent);
  size_t size = nla_total_size(sizeof(struct nlattr));
  size += nla_total_size(num_vfs * sizeof(struct nlattr));
  size += num_vfs *
   (nla_total_size(sizeof(struct ifla_vf_mac)) +
    nla_total_size(sizeof(struct ifla_vf_vlan)) +
    nla_total_size(sizeof(struct ifla_vf_tx_rate)));
  return size;
 } else
  return 0;
}
