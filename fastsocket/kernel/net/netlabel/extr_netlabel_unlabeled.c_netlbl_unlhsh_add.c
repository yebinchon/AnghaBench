
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netlbl_unlhsh_iface {int dummy; } ;
struct netlbl_audit {int dummy; } ;
struct net_device {int ifindex; } ;
struct net {int dummy; } ;
struct in_addr {int s_addr; } ;
struct in6_addr {int dummy; } ;
struct audit_buffer {int dummy; } ;


 int AUDIT_MAC_UNLBL_STCADD ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int atomic_inc (int *) ;
 int audit_log_end (struct audit_buffer*) ;
 int audit_log_format (struct audit_buffer*,char*,...) ;
 struct net_device* dev_get_by_name (struct net*,char const*) ;
 int dev_put (struct net_device*) ;
 int netlabel_mgmt_protocount ;
 int netlbl_af4list_audit_addr (struct audit_buffer*,int,char const*,int ,int ) ;
 int netlbl_af6list_audit_addr (struct audit_buffer*,int,char const*,struct in6_addr*,struct in6_addr*) ;
 struct audit_buffer* netlbl_audit_start_common (int ,struct netlbl_audit*) ;
 int netlbl_unlhsh_add_addr4 (struct netlbl_unlhsh_iface*,struct in_addr*,struct in_addr*,int) ;
 int netlbl_unlhsh_add_addr6 (struct netlbl_unlhsh_iface*,struct in6_addr*,struct in6_addr*,int) ;
 struct netlbl_unlhsh_iface* netlbl_unlhsh_add_iface (int) ;
 int netlbl_unlhsh_def ;
 struct netlbl_unlhsh_iface* netlbl_unlhsh_search_iface (int) ;
 struct netlbl_unlhsh_iface* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int security_release_secctx (char*,int) ;
 scalar_t__ security_secid_to_secctx (int,char**,int*) ;

int netlbl_unlhsh_add(struct net *net,
        const char *dev_name,
        const void *addr,
        const void *mask,
        u32 addr_len,
        u32 secid,
        struct netlbl_audit *audit_info)
{
 int ret_val;
 int ifindex;
 struct net_device *dev;
 struct netlbl_unlhsh_iface *iface;
 struct audit_buffer *audit_buf = ((void*)0);
 char *secctx = ((void*)0);
 u32 secctx_len;

 if (addr_len != sizeof(struct in_addr) &&
     addr_len != sizeof(struct in6_addr))
  return -EINVAL;

 rcu_read_lock();
 if (dev_name != ((void*)0)) {
  dev = dev_get_by_name(net, dev_name);
  if (dev == ((void*)0)) {
   ret_val = -ENODEV;
   goto unlhsh_add_return;
  }
  ifindex = dev->ifindex;
  dev_put(dev);
  iface = netlbl_unlhsh_search_iface(ifindex);
 } else {
  ifindex = 0;
  iface = rcu_dereference(netlbl_unlhsh_def);
 }
 if (iface == ((void*)0)) {
  iface = netlbl_unlhsh_add_iface(ifindex);
  if (iface == ((void*)0)) {
   ret_val = -ENOMEM;
   goto unlhsh_add_return;
  }
 }
 audit_buf = netlbl_audit_start_common(AUDIT_MAC_UNLBL_STCADD,
           audit_info);
 switch (addr_len) {
 case sizeof(struct in_addr): {
  struct in_addr *addr4, *mask4;

  addr4 = (struct in_addr *)addr;
  mask4 = (struct in_addr *)mask;
  ret_val = netlbl_unlhsh_add_addr4(iface, addr4, mask4, secid);
  if (audit_buf != ((void*)0))
   netlbl_af4list_audit_addr(audit_buf, 1,
        dev_name,
        addr4->s_addr,
        mask4->s_addr);
  break;
 }
 default:
  ret_val = -EINVAL;
 }
 if (ret_val == 0)
  atomic_inc(&netlabel_mgmt_protocount);

unlhsh_add_return:
 rcu_read_unlock();
 if (audit_buf != ((void*)0)) {
  if (security_secid_to_secctx(secid,
          &secctx,
          &secctx_len) == 0) {
   audit_log_format(audit_buf, " sec_obj=%s", secctx);
   security_release_secctx(secctx, secctx_len);
  }
  audit_log_format(audit_buf, " res=%u", ret_val == 0 ? 1 : 0);
  audit_log_end(audit_buf);
 }
 return ret_val;
}
