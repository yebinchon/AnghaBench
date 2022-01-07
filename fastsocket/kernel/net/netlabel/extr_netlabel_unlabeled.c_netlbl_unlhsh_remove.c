
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlbl_unlhsh_iface {int dummy; } ;
struct netlbl_audit {int dummy; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct in_addr {int dummy; } ;
struct in6_addr {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int atomic_dec (int *) ;
 struct net_device* dev_get_by_name (struct net*,char const*) ;
 int dev_put (struct net_device*) ;
 int netlabel_mgmt_protocount ;
 int netlbl_unlhsh_condremove_iface (struct netlbl_unlhsh_iface*) ;
 int netlbl_unlhsh_def ;
 int netlbl_unlhsh_remove_addr4 (struct net*,struct netlbl_unlhsh_iface*,void const*,void const*,struct netlbl_audit*) ;
 int netlbl_unlhsh_remove_addr6 (struct net*,struct netlbl_unlhsh_iface*,void const*,void const*,struct netlbl_audit*) ;
 struct netlbl_unlhsh_iface* netlbl_unlhsh_search_iface (int ) ;
 struct netlbl_unlhsh_iface* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int netlbl_unlhsh_remove(struct net *net,
    const char *dev_name,
    const void *addr,
    const void *mask,
    u32 addr_len,
    struct netlbl_audit *audit_info)
{
 int ret_val;
 struct net_device *dev;
 struct netlbl_unlhsh_iface *iface;

 if (addr_len != sizeof(struct in_addr) &&
     addr_len != sizeof(struct in6_addr))
  return -EINVAL;

 rcu_read_lock();
 if (dev_name != ((void*)0)) {
  dev = dev_get_by_name(net, dev_name);
  if (dev == ((void*)0)) {
   ret_val = -ENODEV;
   goto unlhsh_remove_return;
  }
  iface = netlbl_unlhsh_search_iface(dev->ifindex);
  dev_put(dev);
 } else
  iface = rcu_dereference(netlbl_unlhsh_def);
 if (iface == ((void*)0)) {
  ret_val = -ENOENT;
  goto unlhsh_remove_return;
 }
 switch (addr_len) {
 case sizeof(struct in_addr):
  ret_val = netlbl_unlhsh_remove_addr4(net,
           iface, addr, mask,
           audit_info);
  break;







 default:
  ret_val = -EINVAL;
 }
 if (ret_val == 0) {
  netlbl_unlhsh_condremove_iface(iface);
  atomic_dec(&netlabel_mgmt_protocount);
 }

unlhsh_remove_return:
 rcu_read_unlock();
 return ret_val;
}
