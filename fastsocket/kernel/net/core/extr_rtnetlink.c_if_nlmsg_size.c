
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtnl_link_stats64 {int dummy; } ;
struct rtnl_link_stats {int dummy; } ;
struct rtnl_link_ifmap {int dummy; } ;
struct net_device {int dummy; } ;
struct ifinfomsg {int dummy; } ;


 int IFALIASZ ;
 int IFNAMSIZ ;
 int MAX_ADDR_LEN ;
 size_t NLMSG_ALIGN (int) ;
 int RTEXT_FILTER_VF ;
 size_t nla_total_size (int) ;
 size_t rtnl_link_get_af_size (struct net_device const*) ;
 size_t rtnl_link_get_size (struct net_device const*) ;
 size_t rtnl_port_size (struct net_device const*) ;
 size_t rtnl_vfinfo_size (struct net_device const*,int) ;

__attribute__((used)) static inline size_t if_nlmsg_size(const struct net_device *dev,
         u32 ext_filter_mask)
{
 return NLMSG_ALIGN(sizeof(struct ifinfomsg))
        + nla_total_size(IFNAMSIZ)
        + nla_total_size(IFALIASZ)
        + nla_total_size(IFNAMSIZ)
        + nla_total_size(sizeof(struct rtnl_link_ifmap))
        + nla_total_size(sizeof(struct rtnl_link_stats))
        + nla_total_size(sizeof(struct rtnl_link_stats64))
        + nla_total_size(MAX_ADDR_LEN)
        + nla_total_size(MAX_ADDR_LEN)
        + nla_total_size(4)
        + nla_total_size(4)
        + nla_total_size(4)
        + nla_total_size(4)
        + nla_total_size(4)
        + nla_total_size(1)
        + nla_total_size(1)
        + nla_total_size(ext_filter_mask
           & RTEXT_FILTER_VF ? 4 : 0)
        + rtnl_vfinfo_size(dev, ext_filter_mask)
        + rtnl_port_size(dev)
        + rtnl_link_get_size(dev)
        + rtnl_link_get_af_size(dev);
}
